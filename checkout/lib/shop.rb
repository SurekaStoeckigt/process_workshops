class Shop
ALL_ITEMS = {A: 50, B: 30, C: 20, D: 15}
SPECIAL_ITEMS = {A: (130.0 / 3.0 )}

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
    if item.chars.length % 3 == 0 && item.chars[0] == "A"
      item.chars.each do |char|
        @price += SPECIAL_ITEMS[char.to_sym]
      end
    else
      item.chars.each do |char|
       @price += ALL_ITEMS[char.to_sym]
     end
    end
    return @price
  end

end
