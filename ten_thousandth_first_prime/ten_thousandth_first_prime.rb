require 'mathn'
include Math

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