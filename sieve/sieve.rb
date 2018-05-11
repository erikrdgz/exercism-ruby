class Sieve
  def initialize(max)
    @max = max
  end

  def primes
    (2..@max).select { |x| is_prime?(x) }
  end

  def is_prime?(x)
    (2..x).all? do |y|
      same_number = x == y
      evenly_divisible = x % y == 0
      same_number || (!same_number && !evenly_divisible)
    end
  end
end

# Using built in prime method of Ruby
# require 'prime'
# class Sieve
#   def initialize(max)
#     @max = max
#   end
#   def primes
#     container = []
#     (2..@max).each { |x| x.prime?
#       if x.prime? == true
#         container << x
#       end
#     }
#     container
#   end
# end
