require 'mars_rover/input_parser'
require 'mars_rover/command'
require 'mars_rover/direction'
require 'mars_rover/input_parser'
require 'mars_rover/plateau'
require 'mars_rover/position'
require 'mars_rover/rover'

module MarsRover
  class Application
    def deploy
      parse_input
      result
    end

    def input
      puts "Please enter the instructions. When done end with Ctrl+D"
      $/ = "^D"
      STDIN.gets.chomp
    end

    def parse_input
      @result = MarsRover::InputParser.parse(input)
    end

    def result
      @result.rovers.each do |rover|
        rover.deploy
        puts rover.output
      end
    end
  end
end
