class MultiplicationController < ApplicationController
  def show_multiplication_form
    render({ :template => "/multiplication_templates/multiplication_form" })
  end

  def multiply_these
    @first = params.fetch("first_num").to_f
    @second = params.fetch("second_num").to_f
    @result =  @first * @second

    render({ :template => "/multiplication_templates/multiply_results" })
  end
end
