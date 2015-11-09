class Fixnum
  def palindrome_base2?
    self.to_s(2).eql? self.to_s(2).reverse
  end

  def palindrome_base10?
    self.to_s.eql? self.to_s.reverse
  end

  def palindrome_base2_and_base10?
    self.palindrome_base2? and self.palindrome_base10?
  end
end
