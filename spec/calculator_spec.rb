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

  context "add method" do
    before(:each) do
      @calc = Calculator.new
      @num1 = 1
      @num2 = 2
    end

    describe "Create an add method that sums the string expression" do
      it "The method will return the sum of the digits" do
        @calc.add(@num1, @num2).should == @num1 + @num2
      end

      it "The expression can contain 0, 1 or 2 numbers" do
        @calc.add().should == 0
        @calc.add(@num1).should == @num1
        @calc.add(@num1, @num2).should == @num1 + @num2
      end

      it "Then empty string will return 0" do
        empty = ""
        @calc.add(empty).should == 0
      end
    end

    describe "Variable parameters" do
      it "Allows the expression to contain an unknown amount of numbers" do
        num3 = 3
        @calc.add(@num1, @num2, num3).should == 6
        @calc.add(@num1, @num2, 5, 8).should == 16
      end
    end
  end

  context "Diff Method" do
    before(:each) do
      @calc = Calculator.new
    end

    describe "Create a diff method that computes the consecutive differences" do
      it "returns the difference between two numbers" do
        @calc.diff(1, 0).should == 1
      end

      it "can accept unlimited parameters" do
        @calc.diff(3, 2, 1).should == 0
        @calc.diff(5, 4, 3, 2, 1).should == -5
      end

      it "evaluates an empty string as zero" do
        @calc.diff(3, "").should == 3
      end
      it "raises an exception when there are less than two parameters" do
        expect { @calc.diff(1) }.should raise_error
      end
    end
  end

  context "Prod Method" do
    before(:each) do
      @calc = Calculator.new
    end

    describe "Create a prod method that computes the multiples in the expression" do
      it "returns the product of the numbers" do
        @calc.prod(2, 1).should == 2
      end

      it "evaluates an empty string as zero" do
        @calc.prod("").should == 0
      end

      it "accepts unlimited parameters" do
        @calc.prod(3, 2, 1).should == 6
      end

      it "returns zero when there are no parameters" do
        @calc.prod().should == 0
      end
    end
  end

  context "Div Method" do
    before(:each) do
      @calc = Calculator.new
    end
    describe "Create a div method that computes the consecutive divisions in the expression" do
      it "will return the final quotient of the numbers" do
        @calc.div(2, 1).should == 2
        @calc.div(3, 2, 1).should == 1
        @calc.div(1, 2, 3).should == 0
      end

      it "will raise an exception if the expression contains the number 0" do
        expect { @calc.div(3, 0) }.should raise_error
      end
    end
  end
end
