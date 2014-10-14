class CreateDemoData < ActiveRecord::Migration
  def change
    # Create countries
    Country.delete_all
    country_names = [
      'United States',
      'Canada',
      'Australia',
      'South Africa',
      'New Zealand',
      'Puerto Rico',
      'Ireland',
      'United Kingdom',
    ]
    countries = country_names.map do |country_name|
      Country.create(:name => country_name)
    end

    # Create students
    Student.delete_all
    1000.times.each do
      first_name = Random.firstname
      last_name = Random.lastname
      email = first_name.first.downcase + last_name.downcase + '@' + Random.email.split('@').last
      country = countries.sample
      Student.create(
        :first_name => first_name,
        :last_name => last_name,
        :email => email,
        :country_id => country.id,
        :created_at => Random.date(-500..0),
      )
    end
  end
end
