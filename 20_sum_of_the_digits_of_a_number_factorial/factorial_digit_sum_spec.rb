require_relative 'fixnum'
require_relative 'factorial'

describe 'Factorial digits' do
  it 'returns a factorial of a number' do
    expect(4.factorial).to eq 24
    expect(5.factorial).to eq 120
    expect(10.factorial).to eq 3628800
  end

  it 'should return the sum of the digits of a factorial' do
    expect(Factorial.digits_sum(4.factorial)).to eq 6
    expect(Factorial.digits_sum(5.factorial)).to eq 3
    expect(Factorial.digits_sum(100.factorial)).to eq 648
  end
end
