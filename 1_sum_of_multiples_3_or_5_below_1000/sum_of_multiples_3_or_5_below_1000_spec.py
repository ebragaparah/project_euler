import unittest
from should_dsl import should
from sum_of_multiples_3_or_5_below_1000 import *

class MultiplesSpec(unittest.TestCase):
  def test_the_sum_of_multiples_of_3_or_5_below_6_is_8(self):
    sum_of_multiples_below(6) |should| equal_to(8)

  def test_the_sum_of_multiples_of_3_or_5_below_10_is_23(self):
    sum_of_multiples_below(10) |should| equal_to(23)

  def test_the_sum_of_multiples_of_3_or_5_below_15_is_45(self):
    sum_of_multiples_below(15) |should| equal_to(45)

  def test_the_sum_of_multiples_of_3_or_5_below_1000_is_2333168(self):
    sum_of_multiples_below(1000) |should| equal_to(233168)

if __name__ == '__main__':
  unittest.main()    
