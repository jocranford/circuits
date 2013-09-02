Feature: Generate a boxing circuit
  In order to motivate myself to go to the gym
  As a reluctant exerciser
  I want a 45 min varied, intense boxing circuits program

  Scenario
    Given a file containing moves at boxing-moves.json
    When I generate a program
    Then I get five rounds of four sequences
      And the first round consists only of punches
      And the second round consists of at least one kick in each sequence
      And each round is separated by an interim exercise
      And the first and third interim exercises are stretches
      And the second and last interim exercises are cardio
      # other rules ... 