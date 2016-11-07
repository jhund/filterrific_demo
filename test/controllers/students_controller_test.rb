require 'test_helper'

describe StudentsController do

  it 'responds to GET :index' do
    get :index
    assert_response(:success)
  end

end
