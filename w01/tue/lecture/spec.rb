require_relative 'strings'

STRING0 = "[thisisateststringz]"
STRING1 = "{this is a test stringZ}"
STRING2 = "This is a test stringZ"
STRING3 = "THIS IS a TEST STRINGz"

RSpec.describe "#upcase" do
  it { expect(upcase(STRING0)).to eq STRING0.upcase}
  it { expect(upcase(STRING1)).to eq STRING1.upcase}
  it { expect(upcase(STRING2)).to eq STRING2.upcase}
  it { expect(upcase(STRING3)).to eq STRING3.upcase}
end

RSpec.describe "#downcase" do
  it { expect(downcase(STRING0)).to eq STRING0.downcase}
  it { expect(downcase(STRING1)).to eq STRING1.downcase}
  it { expect(downcase(STRING2)).to eq STRING2.downcase}
  it { expect(downcase(STRING3)).to eq STRING3.downcase}
end

RSpec.describe "#swapcase" do
  it { expect(swapcase(STRING0)).to eq STRING0.swapcase}
  it { expect(swapcase(STRING1)).to eq STRING1.swapcase}
  it { expect(swapcase(STRING2)).to eq STRING2.swapcase}
  it { expect(swapcase(STRING3)).to eq STRING3.swapcase}
end
