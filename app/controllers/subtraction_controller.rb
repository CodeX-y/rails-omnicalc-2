class SubtractionController < ApplicationController
  def show_subtraction_form
    render({ :template => "/subtraction_templates/subtraction_form" })
  end

  def subtract_these
    @first = params.fetch("first_num").to_f
    @second = params.fetch("second_num").to_f
    @result =  @second - @first

    render({ :template => "/subtraction_templates/subtract_results" })
  end
end
