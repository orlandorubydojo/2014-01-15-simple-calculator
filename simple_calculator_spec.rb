require './simple_calculator.rb'

# TODO Write some tests!

describe SimpleCalculator do
  before do
    @calculator = SimpleCalculator.new
  end

  context "adding" do
    it "should add two numbers" do
      result = @calculator.add(1, 2)
      expect(result).to eq 3
    end

    it "should handle adding zero" do
      result = @calculator.add(3, 0)
      expect(result).to eq 3
    end

    it "should raise an error if trying to add a string" do
      expect{ @calculator.add("r", 5) }.to raise_error(UnexpectedMathError)
    end
  end

  context "subtracting" do
    it "should subtract two numbers" do
      result = @calculator.subtract(4, 2)
      expect(result).to eq 2
    end

    it "should be able to return a negative number" do
      result = @calculator.subtract(2, 4)
      expect(result).to eq -2
    end
  end

  context "multiplication" do
    it "should multiply two numbers" do
      result = @calculator.multiply(2, 3)
      expect(result).to eq 6
    end

    it "should return zero" do
      result = @calculator.multiply(4, 0)
      expect(result).to eq 0
    end

  end

  context "division" do
    it "should divide two numbers" do
      result = @calculator.divide(6, 2)
      expect(result).to eq 3
    end

    it "should return zero" do
      result = @calculator.divide(4, 0)
      expect(result).to eq 0
    end

    it "should return negative number" do
      result = @calculator.divide(6, -2)
      expect(result).to eq -3
    end

    it "should return positive when getting two negatives" do
      result = @calculator.divide(-6,-3)
      expect(result).to eq 2
    end

  end


end
