require "one_single_move_sequence_rule"

module Circuits

  class BoxingRulesEngine

    def initialize
      @rules = []
      @rules.push(OneSingleMoveSequenceRule.new)
    end

    def get_valid_sequence_lengths(previous_sequences)
      valid_lengths = (MIN_LENGTH..MAX_LENGTH).to_a

      valid_lengths.delete_if do |length|
        @rules.any? {|rule| rule.invalid?(length, previous_sequences)}
      end
    end

    private

      MAX_LENGTH = 5
      MIN_LENGTH = 1

  end

end