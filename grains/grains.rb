class Grains
  def self.square(sq_number)
    raise ArgumentError unless sq_number.between?(1,64)
    chessboard = (1..64)
    grains = 1
    chessboard.each do |square|
      if square == 1
        grains = 1
      else
        grains = grains * 2
      end
      if sq_number == square
        break
      end
    end
    grains
  end

  def self.total
    added_grains = 0
    range = (1..64)
    range.each do |x|
      added_grains = added_grains + square(x)
    end
    added_grains
  end
end
