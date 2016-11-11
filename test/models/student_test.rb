require 'test_helper'

class StudentTest < ActiveSupport::TestCase

  test 'responds to .filterrific_find' do
    assert_respond_to(Student, :filterrific_find)
  end

  test 'has expected test data for countries' do
    assert_equal(2, Country.count)
  end

  test 'has expected test data for students' do
    assert_equal(2, Student.count)
  end

  test 'filters by country' do
    assert_equal(
      [students(:student1).id],
      Student.with_country_id(countries(:canada)).map(&:id)
    )
  end

end
