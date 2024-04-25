class CalculationController < ApplicationController
  def home
    render({ :template => "cal_templates/layout"})
  end

  def square_cal
    render({ :template => "cal_templates/square"})
  end

  def square_root_cal
    render({ :template => "cal_templates/square_root"})
  end

  def payment_cal
    render({ :template => "cal_templates/payment"})
  end

  def random_cal
    render({ :template => "cal_templates/random"})
  end


  def square
    @the_num1 = params.fetch("users_number").to_f 
    @the_result1 = @the_num1 ** 2
    render({ :template => "cal_templates/square_result"})
  end

  def square_root
    @the_num2 = params.fetch("users_number").to_f 
    @the_result2 = @the_num2 ** 0.5
    render({ :template => "cal_templates/square_root_result"})
  end

  def payment
    @apr = params.fetch("user_apr").to_f
    @years = params.fetch("user_years").to_i 
    @pv = params.fetch("user_pv").to_f
    @r = @apr / 100 / 12
    @n = @years * 12
    @payment = @pv * @r / (1 - (1 + @r) ** -@n)
    render({ :template => "cal_templates/payment_result"})
  end

  def random
    @min = params.fetch("user_min").to_f 
    @max = params.fetch("user_max").to_f 
    @rand = rand(@min..@max)
    render({ :template => "cal_templates/random_result"})
  end

end
