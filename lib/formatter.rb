module Circuits

  class Formatter

    def initialize(workout)
      @workout = workout
    end

    def to_s
      rounds = @workout.each_with_index.map do |round, index|
        %{ROUND #{index + 1}
          #{round}
        }
      end
      rounds.join("\n")
    end

  end

end