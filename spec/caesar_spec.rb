require_relative "../caesar.rb"

describe "#caesar_cipher" do
  it "keep case sensitive" do
    expect(caesar_cipher("HELLO", 1)).to eql("IFMMP")
  end

  it "shift only alphabetical character" do
    expect(caesar_cipher("hello, world", 13)).to eql("uryyb, jbeyq")
  end
end