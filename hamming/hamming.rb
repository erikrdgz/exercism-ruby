class Hamming
  def self.compute(original, mutation)
    unless original.length == mutation.length
      raise ArgumentError
    end
    counter = 0
    mutation_char = mutation.split("")
    original.each_char.with_index(0) do |character, index|
      unless mutation_char[index] == character.to_s
        counter = counter + 1
      end
    end
    counter
  end
end
