require 'spec_helper'
require 'calculator'

describe Calculator do
  describe "#initialize" do
    it "instantiates" do
      expect {
        Calculator.new
      }.should_not raise_exception
    end
  end
end
