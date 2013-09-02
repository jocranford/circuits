require "boxing_circuit"

Given(/^a file containing moves at boxing\-moves\.json$/) do
  # TODO! 
end

When(/^I generate a program with (\d) rounds with (\d) sequences$/) do |number_of_rounds, number_of_sequences|
  @expected_number_of_rounds = number_of_rounds.to_i
  @workout = Circuits::BoxingCircuit.new.create_workout(@expected_number_of_rounds)
end

Then(/^the workout contains the correct number of rounds$/) do
  @workout.length.should be(@expected_number_of_rounds)
end

Then(/^each round contains the correct number of sequences$/) do
  pending # express the regexp above with the code you wish you had
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

Then(/^each sequence consists of between (\d+) and (\d+) moves$/) do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end
