require "sequence_generator"

module Circuits

  class RoundGenerator

    def create_round(number_of_sequences)
      sequence_generator = SequenceGenerator.new
      (0...number_of_sequences).map do 
        sequence_generator.create_sequence
      end
    end

  end

end