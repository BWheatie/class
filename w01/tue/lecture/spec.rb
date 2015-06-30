require_relative 'strings'

RSpec.describe "#upcase" do
  STRING0 = "thisisateststring"
  it { expect(upcase(STRING0)).to eq STRING0.upcase}
  STRING1 = "this is a test string"
  it { expect(upcase(STRING1)).to eq STRING1.upcase}
  STRING2 = "This is a test string"
  it { expect(upcase(STRING2)).to eq STRING2.upcase}
end
