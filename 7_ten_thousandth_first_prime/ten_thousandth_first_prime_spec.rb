# coding: utf-8

require './ten_thousandth_first_prime'

describe "Ten thousandth-first prime number." do
  context "Verifying if a number is prime." do
    it "Should return true if number is prime." do
      0.prime?.should == false
      1.prime?.should == false
      2.prime?.should == true
      3.prime?.should == true
      -3.prime?.should == true
      13.prime?.should == true
      14.prime?.should == false
      -14.prime?.should == false
      15.prime?.should == false
      997.prime?.should == true
      -997.prime?.should == true
    end
  end
  
  context "Find the ten thousandth-first prime number." do
    it "Should return the prime if its position in primes array is correct." do
      prime_in_position(0).should == 2
      prime_in_position(1).should == 3
      prime_in_position(2).should == 5
      prime_in_position(3).should == 7
      prime_in_position(4).should == 11
      prime_in_position(9).should == 29
      prime_in_position(1000).should == 7927
      prime_in_position(10000).should == 104743
    end
  end
end