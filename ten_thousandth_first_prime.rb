include Math

class Fixnum
  def prime?
    divisors = []
    root = sqrt(self.abs).to_i
    case self
    when 0, 1
      false
    else
      (1..(root + 1)).each do |iterator|
        divisors << iterator if ((self % iterator).zero?) and (self != iterator)
      end
      divisors.length <= 1
    end
  end
end


def prime_in_position(number)
  primes = []
  counter = 0
  while primes.length <= 10001 do
    if counter.prime?
      primes << counter
    end
    counter += 1
  end
  primes[number]
end