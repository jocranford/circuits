# Job: Build up a sequence of rounds to make a workout
require "round_generator"
require "boxing_rules_engine"

module Circuits

  class BoxingCircuit

    def create_workout(total_rounds, sequences_per_round)
      rules_generator = BoxingRulesEngine.new
      round_generator = RoundGenerator.new(rules_generator)
      (0...total_rounds).map do
        round_generator.create_round(sequences_per_round)
      end
    end

  end

end