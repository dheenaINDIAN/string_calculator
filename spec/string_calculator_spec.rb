require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do
  let(:calculator) { StringCalculator.new }

  describe "#add" do
    it "returns the sum of two comma-separated numbers" do
      expect(calculator.add("1,5")).to eq(6)
    end
  end
end
