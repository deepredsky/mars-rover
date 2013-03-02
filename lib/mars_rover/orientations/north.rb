module MarsRover
  class North
    attr_reader :symbol
    def initialize
      @symbol = "N"
    end

    def turn_left
      West.new
    end
    def turn_right
      East.new
    end
    def move_forward(x, y)
      [x, y+1]
    end
    def inspect
      "#{@symbol}"
    end
  end
end
