import unittest
from should_dsl import should
from prime_factors_of_a_number import *

class PrimeFactorsSpec(unittest.TestCase):
  def test_return_true_if_a_number_is_prime(self):
    is_prime(0) |should| equal_to(False)
    is_prime(1) |should| equal_to(False)
    is_prime(-1) |should| equal_to(False)
    is_prime(2) |should| equal_to(True)
    is_prime(5) |should| equal_to(True)
    is_prime(-5) |should| equal_to(True)
    is_prime(13) |should| equal_to(True)
    is_prime(14) |should| equal_to(False)

  def test_the_largest_prime_factor_of_24_is_3(self):
    largest_prime_factor_of(24) |should| equal_to(3)

  def test_the_largest_prime_factor_of_9_is_3(self):
    largest_prime_factor_of(9) |should| equal_to(3)

  def test_the_largest_prime_factor_of_4_is_2(self):
    largest_prime_factor_of(4) |should| equal_to(2)

  def test_the_largest_prime_factor_of_13195_is_29(self):
    largest_prime_factor_of(13195) |should| equal_to(29)

  def test_the_largest_prime_factor_of_7_is_7(self):
    largest_prime_factor_of(7) |should| equal_to(7)

  def test_the_largest_prime_factor_of_600851475143_is_x(self):
    largest_prime_factor_of(600851475143) |should| equal_to(6857)

if __name__ == '__main__':
  unittest.main()
