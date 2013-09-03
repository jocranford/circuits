module Circuits

  class Sequence

    def initialize(length)
      @moves = (0...length).map do
        "punch"
      end
    end

    def to_s
      @moves.join(", ")
    end

  end

end