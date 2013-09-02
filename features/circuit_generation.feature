Feature: Generate a boxing circuit
  In order to motivate myself to go to the gym
  As a reluctant exerciser
  I want a 45 min varied, intense boxing circuits program

  Scenario: Create a boxing circuit
    Given a file containing moves at boxing-moves.json
    When I generate a program with 2 rounds with 4 sequences

    Then the workout contains the correct number of rounds
      And each round contains the correct number of sequences
      And each sequence consists of between 1 and 5 moves

      And the first round consists only of punches
      And the second round consists of at least one kick in each sequence
      And each round is separated by an interim exercise
      And the first and third interim exercises are stretches
      And the second and last interim exercises are cardio
      # other rules ... 