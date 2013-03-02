module MarsRover
  class Rover
    attr_accessor :position, :command, :plateau

    def deploy
      command.run do |com|
        @position.send(com)
      end
    end

    def output
      "#{@position.x} #{@position.y} #{@position.direction.inspect}"
    end

    def inspect
      "#{@position.inspect}"
    end

    def self.new_from_config(plateau, position, command)
      rover = MarsRover::Rover.new
      rover.plateau = plateau
      rover.position = MarsRover::Position.new_from_string(position)
      rover.command = MarsRover::Command.new(command)
      rover
    end
  end
end
