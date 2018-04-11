require 'prime'
class Sieve
  def initialize(max)
    @max = max
  end

  def primes
    container = []
    (2..@max).each do |x|
      is_prime = true
      (2..x).each do |y|

        numbers_differ = x != y
        evenly_divisible = x % y == 0

        if numbers_differ
          is_prime = is_prime && !evenly_divisible
        end
      end
      container << x if is_prime
    end
    container
  end

end



# def primes
#   container = []
#   (2..@max).each { |x| x.prime?
#     if x.prime? == true
#       container << x
#     end
#   }
#   container
# end
