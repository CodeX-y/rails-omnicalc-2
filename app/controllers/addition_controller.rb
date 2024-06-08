class AdditionController < ApplicationController
  def show_addition_form
    render({ :template => "/addition_templates/addition_form" })
  end

  def add_these
    @first = params.fetch("first_num").to_f
    @second = params.fetch("second_num").to_f
    @result = @first + @second

    render({ :template => "/addition_templates/add_results" })
  end
end
