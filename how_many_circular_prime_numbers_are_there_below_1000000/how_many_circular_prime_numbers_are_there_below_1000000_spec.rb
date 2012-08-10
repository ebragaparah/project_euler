# coding: utf-8

require './how_many_circular_prime_numbers_are_there_below_1000000'

describe 'Finding Circular Prime Numbers.' do
	context 'Testing if a number is prime.' do
		it 'Should returns true if a number is prime.' do
			0.prime?.should == false
			2.prime?.should == true
			27.prime?.should == false
			97.prime?.should == true
		end
	end

	context 'Shows if a number is a circular prime number or not.' do
		it 'Should returns true if a number is a circular prime.' do
			2.circular_prime?.should == true
			6.circular_prime?.should == false
			13.circular_prime?.should == true
		end
	end

	context 'Shows the sum of the circular prime numbers below some number.' do
		it 'Should returns 5 for the sum of the circular primes from 1 to 3' do
			sum_of_circular_prime_numbers_to(3).should == 5
		end

		it 'Should returns 10 for the sum of the circular primes from 1 to 5' do
			sum_of_circular_prime_numbers_to(5).should == 10
		end

		it 'Should returns 28 for the sum of the circular primes from 1 to 11' do
			sum_of_circular_prime_numbers_to(11).should == 28
		end

		it 'Should returns 5134267694 for the sum of the circular primes from 1 to 1000000' do
			sum_of_circular_prime_numbers_to(1000000).should == 5134267694
		end
	end
end