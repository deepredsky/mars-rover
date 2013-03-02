module MarsRover
  class West
    def inspect
      "#{@symbol}"
    end
    attr_reader :symbol
    def initialize
      @symbol = "W"
    end

    def turn_left
      MarsRover::South.new
    end
    def turn_right
      MarsRover::North.new
    end
    def move_forward(x, y)
      [x-1, y]
    end
  end
end

