require "formatter"

module Circuits

  describe Formatter do

    it "outputs the number of each round" do
      formatter = Formatter.new([["something"]])
      formatter.to_s.should include("ROUND 1")
    end

    it "outputs text for each round" do
      formatter = Formatter.new([["something"]])
      formatter.to_s.should include("something")
    end

  end

end