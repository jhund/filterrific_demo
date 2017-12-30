class StudentsController < ApplicationController

  def index
    @filterrific = initialize_filterrific(
      Student,
      params[:filterrific],
      :select_options => {
        sorted_by: Student.options_for_sorted_by,
        with_country_id: Country.options_for_select
      }
    ) or return
    @students = @filterrific.find.page(params[:page])

    respond_to do |format|
      format.html
      format.js
    end
  end

end
