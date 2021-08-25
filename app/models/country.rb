class Country < ApplicationRecord
  has_many :students, dependent: :nullify

  def self.options_for_select
    countries = Country.arel_table
    # order('LOWER(name)').map { |e| [e.name, e.id] }
    order(countries[:name].lower).pluck(:name, :id)
  end
end
