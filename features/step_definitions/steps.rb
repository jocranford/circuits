require "boxing_circuit"

Given(/^a file containing moves at boxing\-moves\.json$/) do
  # TODO! 
end

When(/^I generate a program with (\d) rounds with (\d) sequences$/) do |number_of_rounds, number_of_sequences|
  @expected_number_of_rounds = number_of_rounds.to_i
  @expected_number_of_sequences = number_of_sequences.to_i
  @workout = Circuits::BoxingCircuit.new.create_workout(@expected_number_of_rounds, @expected_number_of_sequences)
end

Then(/^the workout contains the correct number of rounds$/) do
  @workout.length.should be(@expected_number_of_rounds)
end

Then(/^each round contains the correct number of sequences$/) do
  @workout.each do |round|
    round.length.should be @expected_number_of_sequences
  end
end

Then(/^each sequence consists of between (\d+) and (\d+) moves$/) do |minimum, maximum|
  @workout.each do |round|
    round.each do |sequence|
      number_of_moves = sequence.to_s.split(",").size
      number_of_moves.should be >= minimum.to_i
      number_of_moves.should be <= maximum.to_i
    end
  end
end

Then(/^the first round consists only of punches$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^the second round consists of at least one kick in each sequence$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^each round is separated by an interim exercise$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^the first and third interim exercises are stretches$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^the second and last interim exercises are cardio$/) do
  pending # express the regexp above with the code you wish you had
end