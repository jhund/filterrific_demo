require 'test_helper'

class FilterrificIntegrationTest < ActionDispatch::IntegrationTest

  test 'responds to GET :index' do
    get '/students'
    assert_select "h1", "Students"
  end

  test 'lists all students by default' do
    get '/students'
    assert_select "tr.student", 2
  end

  test 'filters students by country_id' do
    student = Student.first
    get '/students', params: { 'filterrific' => { 'with_country_id' => student.country_id }}
    assert_select "tr.student", 1 do
      assert_select "td.name", student.full_name
    end
  end

end
