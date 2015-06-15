require_relative 'fizzbuzz'

RSpec.describe "#fizzbuzz" do
  it "prints fizz if divisible by 5" do
    expect(STDOUT).to receive(:puts).with('Fizz')
    fizzbuzz 5
  end
  it "prints buzz if divisible by 3" do
    expect(STDOUT).to receive(:puts).with('Buzz')
    fizzbuzz 3
  end
  it "prints fizzbuzz if divisible by 15" do
    expect(STDOUT).to receive(:puts).with('FizzBuzz')
    fizzbuzz 15
  end
end
