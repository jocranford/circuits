# Job: Build up a sequence of rounds to make a workout
require "round_generator"

module Circuits

  class BoxingCircuit

    def create_workout(total_rounds)
      round_generator = RoundGenerator.new
      (0...total_rounds).map do
        round_generator.create_round
      end
    end

  end

end