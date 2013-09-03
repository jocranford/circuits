module Circuits

  describe Sequence do

    it "should return a string with the correct number of moves" do
      Sequence.new(2).to_s.split(",").size.should be(2)
      Sequence.new(5).to_s.split(",").size.should be(5)
    end

  end

end