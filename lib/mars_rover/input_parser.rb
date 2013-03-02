module MarsRover
  class InputParser
    attr_accessor :plateau, :rovers
    def initialize(input)
      @input = input
      @plateau = {}
      @rovers = []
    end

    def parse
      lines = @input.split(/\n/)
      @plateau = MarsRover::Plateau.from_config(lines[0])
      (1..lines.length - 1).step(2) do |index|
        i = index
        rover = nil
        unless lines[i].nil?
          rover = MarsRover::Rover.new_from_config(@plateau, lines[i], lines[i+1])
          @rovers << rover
        end
      end
    end

    def self.parse(input)
      parser = new(input)
      parser.parse
      parser
    end
  end
end
