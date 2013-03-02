module MarsRover
  class East
    def inspect
      "#{@symbol}"
    end
    attr_reader :symbol
    def initialize
      @symbol = "E"
    end

    def turn_left
      MarsRover::North.new
    end
    def turn_right
      MarsRover::South.new
    end
    def move_forward(x, y)
      [x+1, y]
    end
  end
end
