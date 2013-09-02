module Circuits

  class Formatter

    def initialize(workout)
      @workout = workout
    end

    def to_s
      rounds = @workout.each_with_index.map do |round, index|
        %{ROUND #{index + 1}
        #{write_round(round)}
        }
      end
      rounds.join("\n")
    end

    private 

      def write_round(round)
        round.join("\n\t")
      end

  end

end