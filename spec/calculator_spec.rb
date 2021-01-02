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

# extra structural things
# cleaning up your test suite
# try stubbing
# try doubles

# context
  # behaves like describe
  # used to commmunicate the context in which something is happening
# let / subject
# stubbing
  # intercepting a method call
  # e.g. intercept gets -> return a value (some string)

RSpec.describe Calculator do

  describe "#add" do
    it 'returns the total of two numbers' do
      actual_value = subject.add(1,1)
      expected_value = 2
      expect(actual_value).to eq expected_value
    end
  end

  describe "#multiply" do
    it "multiplies two numbers" do

      actual_value = subject.multiply(5,5)
      expected_value = 25
      expect(actual_value).to eq expected_value
    end
  end

  describe "#random_add" do
    it "takes a number and adds it to a random number" do
      # don't call rand
      # don't do anything
      # just return 3
      options = [1,2,3,4,5,6,7,8,9,10]
      allow(options).to receive(:sample).and_return(3)
      expect(subject.random_add(2, options)).to eq 5
    end
  end

  describe "#greeting" do
    it "selects a greeting from a list, randomly" do
      allow(subject).to receive(:rand).and_return(2)
      expect(subject.greeting).to eq "Hello"
    end
  end

  describe "#happy_number?" do
    it "takes a number and tells you whether or not the number is happy" do
      allow(subject).to receive(:rand).and_return(0)
      expect(subject.happy_number?(6)).to eq false
    end
  end
end
