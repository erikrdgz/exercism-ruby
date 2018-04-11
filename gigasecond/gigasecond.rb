class Gigasecond
  @giga_second = 10**9
  def self.from(date)
    date + @giga_second
  end

end
