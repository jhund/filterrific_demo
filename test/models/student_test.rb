require 'test_helper'

describe Student do

  describe '.filterrific_find' do

    it 'responds to .filterrific_find' do
      Student.must_respond_to(:filterrific_find)
    end

    it 'has expected test data for countries' do
      Country.count.must_equal(2)
    end

    it 'has expected test data for students' do
      Student.count.must_equal(2)
    end

    it 'filters by country' do
      Student.with_country_id(countries(:canada))
             .map(&:id)
             .must_equal([students(:student1).id])
    end

  end

end
