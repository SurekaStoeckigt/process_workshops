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

end
