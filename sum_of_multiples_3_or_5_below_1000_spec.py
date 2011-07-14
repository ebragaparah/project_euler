import unittest
from should_dsl import should, should_not
from sum_of_multiples_3_or_5_below_1000 import *

class MultiplesSpec(unittest.TestCase):
  def test_deve_informar_que_a_soma_dos_multiplos_de_3_ou_5_ate_6_eh_8(self):
    sum_of_multiples_below(6) |should| equal_to(8)

  def test_deve_informar_que_a_soma_dos_multiplos_de_3_ou_5_ate_10_eh_23(self):
    sum_of_multiples_below(10) |should| equal_to(23)

  def test_deve_informar_que_a_soma_dos_multiplos_de_3_ou_5_ate_15_eh_45_(self):
    sum_of_multiples_below(15) |should| equal_to(45)

  def test_deve_informar_que_a_soma_dos_multiplos_de_3_ou_5_ate_1000_eh_x(self):
    sum_of_multiples_below(1000) |should| equal_to(233168)

if __name__ == '__main__':
  unittest.main()    
