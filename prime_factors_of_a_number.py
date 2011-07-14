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
  primes = []
  for iterator in xrange(2, number+1):
    if is_prime(iterator):
      primes.append(iterator)
  return primes

def prime_factors(number):
  factors = []
  list_of_primes_below = primes_below(number)
  while number != 1:
    for iterator in list_of_primes_below:
      if number % iterator == 0:
        number /= iterator
        factors.append(iterator)
      else:
        continue
      break
  return factors

def largest_prime_factor(number):
  return prime_factors(number)[-1]
