require "sequence"

module Circuits

  class RoundGenerator

    def initialize(rules_engine)
      @rules_engine = rules_engine
    end

    def create_round(number_of_sequences)
      sequences = []
      (0...number_of_sequences).each do |round_number|
        number_of_moves = @rules_engine.get_valid_sequence_lengths(sequences).sample
        sequences.push(Sequence.new(number_of_moves))
      end
      sequences
    end

  end

end