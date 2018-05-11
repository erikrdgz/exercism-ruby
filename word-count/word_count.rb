class Phrase
  def initialize sentence
    @sentence = sentence.downcase.scan(/\b[\w']+\b/)
  end

  def word_count
    @sentence.each_with_object(Hash.new(0)) { |string, hash| hash[string] += 1 }

  end
end
