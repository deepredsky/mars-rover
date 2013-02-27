require 'input_parser'

class Application
  attr_accessor :input

  def deploy
    @input = gets.chomp
    parse_input
    puts result
  end

  def parse_input
    InputParser.parse(@input)
  end

  def result
  end
end
