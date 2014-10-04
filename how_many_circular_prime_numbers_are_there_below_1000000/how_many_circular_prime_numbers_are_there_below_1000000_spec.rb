# coding: utf-8

require './how_many_circular_prime_numbers_are_there_below_1000000'

describe 'Finding Circular Prime Numbers.' do
  context 'Testing if a number is prime.' do
    it 'Should return true if a number is prime.' do
      0.prime?.should == false
      2.prime?.should == true
      27.prime?.should == false
      97.prime?.should == true
    end
  end

  context 'Shows if a number is a circular prime number or not.' do
    it 'Should return true if a number is a circular prime.' do
      2.circular_prime?.should == true
      6.circular_prime?.should == false
      13.circular_prime?.should == true
    end
  end

  context 'Shows how many circular prime numbers the are below some number.' do
    it 'Should return 2 for the count of the circular primes from 1 to 3' do
      how_many_circular_prime_numbers_to?(3).should == 2
    end

    it 'Should return 3 for the count of the circular primes from 1 to 5' do
      how_many_circular_prime_numbers_to?(5).should == 3
    end

    it 'Should return 5 for the count of the circular primes from 1 to 11' do
      how_many_circular_prime_numbers_to?(11).should == 5
    end

    it 'Should return 13 for the count of the circular primes from 1 to 100' do
      how_many_circular_prime_numbers_to?(100).should == 13
    end

    it 'Should return 11297 for the count of the circular primes from 1 to 1000000' do
      how_many_circular_prime_numbers_to?(1000000).should == 11297
    end

    it 'Should return 11297 for the count of the circular primes below 1000000' do
      how_many_circular_prime_numbers_to?(999999).should == 11297
    end
  end
end
