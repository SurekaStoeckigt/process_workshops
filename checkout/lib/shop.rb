class Shop
ALL_ITEMS = {A: 50, B: 30, C: 20, D: 15}

  def initialize
    @price = 0
  end

  def checkout(item)
    return -1 if item.is_a?Integer
    item.each_char do |letter|
      return -1 unless ALL_ITEMS.key?(letter.to_sym)
    end
    calc_price(item)
  end

  def calc_price(item)
    item.chars.each do |char|
       @price += ALL_ITEMS[char.to_sym]
    end
    return @price
  end

end
