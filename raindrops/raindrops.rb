class Raindrops
  def self.convert num
    output = ''
    output << "Pling" if divisible_by?(num, 3)
    output << "Plang" if divisible_by?(num, 5)
    output << "Plong" if divisible_by?(num, 7)
    output << "#{num}" if output == ''
    output
  end
  def self.divisible_by? numerator, denominator
    numerator % denominator  == 0
  end
end
