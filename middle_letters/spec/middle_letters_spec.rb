require "./lib/middle_letters.rb"

describe Middle do

  it "returns es for test" do
    expect(Middle.get_middle("test")).to eq("es")
  end

  it "returns t for testing" do
    expect(Middle.get_middle("testing")).to eq("t")
  end

  it "returns dd for middle" do
    expect(Middle.get_middle("middle")).to eq("dd")
  end

  it "returns A for A" do
    expect(Middle.get_middle("A")).to eq("A")
  end

  it "returns of for of" do
    expect(Middle.get_middle("of")).to eq("of")
  end

end
