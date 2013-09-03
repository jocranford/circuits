module Circuits

  describe BoxingRulesEngine do

    before do
      @rule = double(OneSingleMoveSequenceRule)
      @rule.stub(:invalid?)
      OneSingleMoveSequenceRule.stub(:new).and_return(@rule)
    end

    it "returns an array of all numbers between min and max when there are no previous sequences" do
      BoxingRulesEngine.new.get_valid_sequence_lengths([]).should eq([1,2,3,4,5])
    end

    it "should validate the sequence against the rule for maximum 1 sequence with a single move" do 
      @rule.should_receive(:invalid?)
      BoxingRulesEngine.new.get_valid_sequence_lengths([])
    end

  end

end