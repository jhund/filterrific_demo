require 'test_helper'

class StudentsControllerTest < ActionDispatch::IntegrationTest

  test 'responds to GET :index' do
    get students_path
    assert_response(:success)
  end

end
