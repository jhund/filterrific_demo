require "spec_helper"

describe StudentsController do
  it "responds to GET :index" do
    get :index
    assert_response(:success)
  end

  it "assigns @students" do
    get :index

    assigns(:students).count.must_equal(1000)
  end

  it "assigns @filterrific" do
    get :index
    assigns(:filterrific).must_be_instance_of(Filterrific::ParamSet)
  end
end
