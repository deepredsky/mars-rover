module MarsRover
  class Plateau
    attr_accessor :x, :y

    def self.from_config(config)
      plateau = new
      plateau.x, plateau.y = config.split(" ").map(&:to_i)
      plateau
    end
  end
end
