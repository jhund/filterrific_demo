class StudentsController < ApplicationController

  def index
    @filterrific = Filterrific.new(
      Student,
      params[:filterrific] || session[:filterrific_students]
    )
    @students = Student.filterrific_find(@filterrific).page(params[:page])
    session[:filterrific_students] = @filterrific.to_hash

    respond_to do |format|
      format.html
      format.js
    end
  end

  def reset_filterrific
    session[:filterrific_students] = nil
    redirect_to :action => :index
  end

end
