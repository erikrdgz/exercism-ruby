class Integer
  def to_roman
    roman_numeral_equivalents = {
      1000 => "M",
      900 => "CM",
      500 => "D",
      400 => "CD",
      100 => "C",
      90 => "XC",
      50 => "L",
      40 => "XL",
      10 => "X",
      9 => "IX",
      5 => "V",
      4 => "IV",
      1 => "I"
    }
    number = self
    roman_numeral = ""
    roman_numeral_equivalents.each do |int, numeral|
      roman_numeral << numeral * (number / int)
      number = number % int
    end
    roman_numeral
  end
end
