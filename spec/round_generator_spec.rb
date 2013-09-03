module Circuits

  describe RoundGenerator do

  	before do
  		@sequence = double(Sequence)
  		@rules_generator = double(BoxingRulesGenerator)
  		@rules_generator.stub(:get_valid_sequence_lengths).and_return([1])
  	end

    it "creates the correct number of sequences" do
      Sequence.should_receive(:new).exactly(4).times
      RoundGenerator.new(@rules_generator).create_round(4).size.should be(4)
    end

    it "should sample the array returned from the rules generator to create the sequence" do
    	valid_sequence_lengths = double(Array)
    	valid_sequence_lengths.should_receive(:sample).and_return(2)
    	@rules_generator.stub(:get_valid_sequence_lengths).and_return(valid_sequence_lengths)
    	Sequence.should_receive(:new).with(2)
    	RoundGenerator.new(@rules_generator).create_round(1)
    end

  end

end