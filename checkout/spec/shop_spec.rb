require "./lib/shop.rb"

describe Shop do

  it "returns -1 for illegal input" do
    shop = Shop.new
    expect(shop.checkout("aBc")).to eq(-1)
  end

  it "returns -1 for -B8x" do
    shop = Shop.new
    expect(shop.checkout("-B8x")).to eq(-1)
  end

  it "returns -1 for 18" do
    shop = Shop.new
    expect(shop.checkout(18)).to eq(-1)
  end

  it "returns 100 for AA" do
    shop = Shop.new
    expect(shop.checkout("AA")).to eq(100)
  end

  it "returns 115 for ABCD" do
    shop = Shop.new
    expect(shop.checkout("ABCD")).to eq(115)
  end

  it "returns 130 for AAA" do
    shop = Shop.new
    expect(shop.checkout("AAA")).to eq(130)
  end

  it "returns 260 for AAAAAA" do
    shop = Shop.new
    expect(shop.checkout("AAAAAA")).to eq(260)
  end
end
