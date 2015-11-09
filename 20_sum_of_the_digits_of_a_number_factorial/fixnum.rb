class Fixnum
  def factorial
    (1..self).inject(:*)
  end
end
