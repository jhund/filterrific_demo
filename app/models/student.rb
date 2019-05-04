class Student < ApplicationRecord

  filterrific :default_filter_params => { :sorted_by => 'created_at_desc' },
              :available_filters => %w[
                sorted_by
                search_query
                with_country_id
                with_created_at_gte
              ]

  # default for will_paginate
  self.per_page = 10

  belongs_to :country

  scope :search_query, ->(query) {
    return nil  if query.blank?
    # condition query, parse into individual keywords
    terms = query.downcase.split(/\s+/)
    # replace "*" with "%" for wildcard searches,
    # append '%', remove duplicate '%'s
    terms = terms.map { |e|
      (e.gsub('*', '%') + '%').gsub(/%+/, '%')
    }
    # configure number of OR conditions for provision
    # of interpolation arguments. Adjust this if you
    # change the number of OR conditions.
    num_or_conditions = 3
    where(
      terms.map {
        or_clauses = [
          "LOWER(students.first_name) LIKE ?",
          "LOWER(students.last_name) LIKE ?",
          "LOWER(students.email) LIKE ?"
        ].join(' OR ')
        "(#{ or_clauses })"
      }.join(' AND '),
      *terms.map { |e| [e] * num_or_conditions }.flatten
    )
  }

  scope :sorted_by, ->(sort_option) {
    # extract the sort direction from the param value.
    direction = (sort_option =~ /desc$/) ? 'desc' : 'asc'
    students = Student.arel_table
    countries = Country.arel_table
    case sort_option.to_s
    when /^created_at_/
      # order("students.created_at #{direction}")
      order(students[:created_at].send(direction))
    when /^name_/
      # order("LOWER(students.last_name) #{direction}, LOWER(students.first_name) #{direction}")
      order(students[:last_name].lower.send(direction)).order(students[:first_name].lower.send(direction))
    when /^country_name_/
      # order("LOWER(countries.name) #{ direction }").includes(:country)
      Student.joins(:country).order(countries[:name].lower.send(direction)).order(students[:last_name].lower.send(direction))
    else
      raise(ArgumentError, "Invalid sort option: #{sort_option.inspect}")
    end
  }

  scope :with_country_id, ->(country_ids) {
    where(:country_id => [*country_ids])
  }

  scope :with_created_at_gte, ->(ref_date) {
    where('students.created_at >= ?', ref_date)
  }

  delegate :name, :to => :country, :prefix => true

  def self.options_for_sorted_by
    [
      ['Name (a-z)', 'name_asc'],
      ['Registration date (newest first)', 'created_at_desc'],
      ['Registration date (oldest first)', 'created_at_asc'],
      ['Country (a-z)', 'country_name_asc']
    ]
  end

  def full_name
    [last_name, first_name].compact.join(', ')
  end

  def decorated_created_at
    created_at.to_date.to_s(:long)
  end
  
end
