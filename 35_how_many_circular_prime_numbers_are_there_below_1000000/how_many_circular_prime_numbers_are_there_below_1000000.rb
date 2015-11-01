require 'mathn'

class Fixnum
  def circular_prime?
    self.prime? ? self.to_s.reverse.to_i.prime? : false
  end
end

def how_many_circular_prime_numbers_to?(number)
  count = 0
  (1..number).to_a.each do |number|
    count += 1 if number.circular_prime?
  end
  count
end