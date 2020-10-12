require 'calculator'

# describe
  # prints the string
  # executes the block
# it
  # prints the string
  # executes the blocks
# expect
  # takes the actual value
  # comapares it to the expected value
RSpec.describe Calculator do

  describe "#add" do
    it 'returns the total of two numbers' do

      calculator = Calculator.new

      actual_value = calculator.add(1,1)
      expected_value = 2
      expect(actual_value).to eq expected_value
    end
  end

  describe "#multiply" do
    it "multiplies two numbers" do

      calculator = Calculator.new

      actual_value = calculator.multiply(5,5)
      expected_value = 25
      expect(actual_value).to eq expected_value
    end
  end

  describe "#divide" do
  end
end