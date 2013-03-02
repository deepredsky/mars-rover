module MarsRover
  class South
    attr_reader :symbol
    def initialize
      @symbol = "S"
    end

    def turn_left
      East.new
    end
    def turn_right
      West.new
    end
    def move_forward(x, y)
      [x, y-1]
    end
    def inspect
      "#{@symbol}"
    end
  end
end
