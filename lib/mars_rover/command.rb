module MarsRover
  class Command
    attr_accessor :codes

    INSTRUCTIONS = {
      'L' => 'turn_left',
      'M' => 'move_forward',
      'R' => 'turn_right',
    }

    def initialize(code)
      @codes = code.to_s.strip
    end

    def run(&block)
      @codes.each_char do |code|
        yield command_from_code(code) if command_from_code(code)
      end
    end

    def command_from_code(code)
      INSTRUCTIONS[code]
    end
  end
end
