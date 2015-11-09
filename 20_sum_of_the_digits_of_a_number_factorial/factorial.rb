module Factorial
  def Factorial.digits_sum(factorial_of_a_number)
    factorial_of_a_number.to_s.split("").map(&:to_i).reduce(:+)
  end
end
