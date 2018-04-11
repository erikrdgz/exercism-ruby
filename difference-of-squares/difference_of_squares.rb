class Squares
  def initialize(num)
    @number = num
  end

  def square_of_sum
    (1..@number).sum ** 2
  end

  def sum_of_squares
    (1..@number).map { |x| x ** 2 }.sum
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
