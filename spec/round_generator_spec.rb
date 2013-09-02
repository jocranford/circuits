module Circuits

  describe RoundGenerator do

    it "creates the correct number of sequences" do
      sequence_generator = double(SequenceGenerator)
      SequenceGenerator.stub(:new).and_return(sequence_generator)
      sequence_generator.should_receive(:create_sequence).exactly(4).times
      RoundGenerator.new.create_round(4).size.should be(4)
    end

  end

end