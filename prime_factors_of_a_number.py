def primes_below(number):
  primes = list(xrange(2, number))
  for iterator in primes:
    for jumper in primes:
      if (jumper % iterator == 0) and (jumper != iterator):
       primes.remove(jumper)
  return primes

def prime_factors(number):
  factors = []
  list_of_primes_below = primes_below(number)
  for iterator in list_of_primes_below:
    while number % iterator == 0:
      number /= iterator
      factors.append(iterator)
  return factors

def largest_prime_factor(number):
  return prime_factors(number)[-1]
