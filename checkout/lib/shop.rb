class Shop

ALL_ITEMS = {"A" => 150, "B" => 30, "C" => 20, "D" => 15}

  def checkout(item)
    item.chars.each do |letter|
      return -1 unless ALL_ITEMS.key?(letter)
    end 
  end

end
