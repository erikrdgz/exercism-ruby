class Prime
  def self.nth(location_of_prime)
    raise ArgumentError if location_of_prime == 0
    container = []
    val = 2

    while container.count < location_of_prime do
      container << val if is_prime?(val)
      val += 1
    end
    container.last
  end

  def self.is_prime?(int)
    (2...int).each { |y| return false if int % y == 0 }
    true
  end
end
