require "boxing_circuit"

module Circuits

  describe BoxingCircuit do
    
    it "creates the correct number of rounds" do
      round_generator = double(RoundGenerator)
      round_generator.stub(:create_round)
      RoundGenerator.stub(:new).and_return(round_generator)
      BoxingCircuit.new.create_workout(1, 1).size.should be(1)
      BoxingCircuit.new.create_workout(5, 1).size.should be(5)
    end

    it "passes the number of sequences per round to the round generator" do
      round_generator = double(RoundGenerator)
      round_generator.should_receive(:create_round).with(2)
      RoundGenerator.stub(:new).and_return(round_generator)
      BoxingCircuit.new.create_workout(1, 2)
    end

    it "passes the rules to the round generator" do
      pending
    end

  end

end