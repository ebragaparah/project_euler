require_relative 'fixnum'
require_relative 'number_manager'

describe 'Palindromic numbers' do
  context 'in base 2' do
    it 'returns true when a number is palindromic in base 2' do
      expect(2.palindrome_base2?).to eq false
      expect(3.palindrome_base2?).to eq true
      expect(4.palindrome_base2?).to eq false
      expect(5.palindrome_base2?).to eq true
      expect(585.palindrome_base2?).to eq true
    end
  end

  context 'in base 10' do
    it 'returns true when a number is palindromic in base 10' do
      expect(5.palindrome_base10?).to eq true
      expect(10.palindrome_base10?).to eq false
      expect(11.palindrome_base10?).to eq true
      expect(5885.palindrome_base10?).to eq true
      expect(483.palindrome_base10?).to eq false
      expect(585.palindrome_base10?).to eq true
    end
  end

  context 'in both base 2 and base 10' do
    it 'returns true when a number is palindromic both in base 2 and base 10' do
      expect(3.palindrome_base2_and_base10?).to eq true 
      expect(5.palindrome_base2_and_base10?).to eq true
      expect(4.palindrome_base2_and_base10?).to eq false
      expect(585.palindrome_base2_and_base10?).to eq true
    end
  end
end

describe 'Sum of palindromic numbers' do
  it 'should return the result of the sum until the limit passed by argument' do
    expect(NumberManager::sum_of_all_palindromic_numbers_until(9)).to eq 25
    expect(NumberManager::sum_of_all_palindromic_numbers_until(100)).to eq 157
    expect(NumberManager::sum_of_all_palindromic_numbers_until(1000000)).to eq 872187
  end
end
