from math import sqrt

def is_prime(number):
  root = int(sqrt(abs(number)))
  if number == 0 or number == 1:
    return False
  else:
    counter = 0
    for iterator in xrange(1, root + 1):
      if number % iterator == 0:
        counter += 1
  return counter <= 1

def prime_factors_of(number):
  root = int(sqrt(abs(number)))
  factors = []
  if not is_prime(number):
    for iterator in xrange(1, root + 1):
      if is_prime(iterator):
        while number % iterator == 0:
          number /= iterator
          factors.append(iterator)
  else:
    factors.append(number)
  return factors

def largest_prime_factor_of(number):
  return prime_factors_of(number)[-1]
