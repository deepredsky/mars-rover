require 'mars_rover/orientations/west'
require 'mars_rover/orientations/east'
require 'mars_rover/orientations/south'
require 'mars_rover/orientations/north'

module MarsRover
  class Position
    attr_accessor :x, :y, :direction

    def initialize
      @x = 0
      @y = 0
      @direction = MarsRover::Direction.get('N')
    end

    def turn_left
      @direction = @direction.turn_left
    end

    def turn_right
      @direction = @direction.turn_right
    end

    def move_forward
      @x, @y = @direction.move_forward(@x, @y)
    end

    def inspect
      "x: #{@x}, y: #{@y}, o: #{@direction.inspect}"
    end

    def self.new_from_string(string)
      position = new
      state = string.split(' ')
      position.x = state[0].to_i
      position.y = state[1].to_i
      position.direction = MarsRover::Direction.get(state[2])
      position
    end
  end
end
