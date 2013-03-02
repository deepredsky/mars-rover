module MarsRover
  class Direction
    DIRECTIONS = {
      "S" => "South",
      "N" => "North",
      "E" => "East",
      "W" => "West"
    }
    def self.get(direction)
      raise Exception.new("Malformed direction: #{direction.inspect}") unless DIRECTIONS.include?(direction)
      Object.const_get("MarsRover").const_get(DIRECTIONS[direction]).new
    end
  end
end
