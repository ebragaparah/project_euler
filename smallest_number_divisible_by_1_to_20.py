import unittest
from should_dsl import should

class SmallestSpec(unittest.TestCase):
  def test_smallest_number_divisible_by_1_to_10_is_2520(self):
    smallest_number_divisible_by(10) |should| equal_to(2520)

  def test_smallest_number_divisible_by_1_to_3_is_6(self):
    smallest_number_divisible_by(3) |should| equal_to(6)

def smallest_number_divisible_by(number):
  list = [x for x in list if x != 1]
  list = map(div, listi)

#for i in primes:
#for j in numbers:
#numbers = [x for x in numbers if x != 1]
#while any(j % i == 0 for j in numbers):
#numbers = map(div, numbers)
#foo.append(i)

if __name__ == '__main__':
  unittest.main()
