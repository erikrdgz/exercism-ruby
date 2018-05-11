class Bob
  def self.hey begin_convo
    # Bob answers 'Sure.' if you ask him a question.
    if begin_convo.include?('?') && !begin_convo.match(/[a-z]+/)
      response = 'Whoa, chill out!'

    elsif begin_convo.include?('?')
      response = 'Sure.'
    # He answers 'Whoa, chill out!' if you yell at him.\
    elsif !begin_convo.match(/[a-z]+/)
    response = 'Whoa, chill out!'

    elsif begin_convo.include?('!') && begin_convo.match(/[a-z]+/)
      response = 'Whatever.'

    elsif begin_convo.include?('!') && !begin_convo.match(/[a-z]+/)
      response = 'Whoa, chill out!'

      # He says 'Fine. Be that way!' if you address him without actually saying
    elsif begin_convo == ""
      response = 'Fine. Be that way!'
      # anything.
    else
      response = 'Whatever.'
    # He answers 'Whatever.' to anything else.
    end
    response
  end
end
