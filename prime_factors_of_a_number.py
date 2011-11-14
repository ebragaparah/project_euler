from math import sqrt

def is_prime(number):
  if number < 2:
    return False
  else:
    count = 0
    for iterator in xrange(1, int(sqrt(number))+1):
      if number % iterator == 0:
        count += 1
  return count <= 1

def primes_below(number):
  root = int(sqrt(number))
  primes = list(xrange(2, number))
  for iterator in xrange(2, root+1):
    for jumper in primes:
      if (jumper % iterator == 0) and (jumper != iterator):
       primes.remove(jumper)
  return primes

def prime_factors(number):
  factors = []
  if not is_prime(number):
    list_of_primes_below = primes_below(number)
    for iterator in list_of_primes_below:
      while number % iterator == 0:
        number /= iterator
        factors.append(iterator)
  else:
    factors.append(number)
  return factors

def largest_prime_factor(number):
  return prime_factors(number)[-1]
