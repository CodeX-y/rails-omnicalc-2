class DivisionController < ApplicationController
  def show_division_form
    render({ :template => "/division_templates/division_form" })
  end

  def divide_these
    @first = params.fetch("first_num").to_f
    @second = params.fetch("second_num").to_f
    @result =  @first / @second

    render({ :template => "/division_templates/divide_results" })
  end
end
