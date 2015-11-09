module NumberManager
  def NumberManager.sum_of_all_palindromic_numbers_until(limit)
    (1..limit).select{ |number| number.palindrome_base2_and_base10? }.inject(:+)
  end
end
