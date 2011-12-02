require 'mathn'

def prime_in_position(number)
  primes = []
  counter = 0
  while primes.length <= 10001 do
    primes << counter if counter.prime?
    counter += 1
  end
  primes[number]
end