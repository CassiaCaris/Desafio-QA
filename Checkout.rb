class ProdutItem
  
  attr_reader :price_unit, :item, :price_promo

  def initialize(price_unit: , item: 1, price_promo: price_unit)
    @price_unit = price_unit
    @item = item
    @price_promo = price_promo
  end

  def price_qtde(units)
    units_promo = units / @item
    units_excl_offer = units % @item
    @price_promo * units_promo + @price_promo * units_excl_offer
  end

end

RULES = {
  " " => ProdutItem.new(price_unit: 0),
  "A" => ProdutItem.new(price_unit: 50, item: 3, price_promo: 130),
  "B" => ProdutItem.new(price_unit: 30, item: 2, price_promo: 45),
  "C" => ProdutItem.new(price_unit: 20),
  "D" => ProdutItem.new(price_unit: 15)
}

class CheckOut

  def initialize(price_list)
    @rules = price_list
    @items = Hash.new
  end

  def scan(item)
    raise "O item '#{item}' é invalido" unless @rules.keys.include? item
    @items[item] ||= 0
    @items[item] += 1
  end

  def total
    subtotal = 0

    @items.keys.each do |i|

      good, units = @rules[i], @items[i]
      subtotal += good.price_qtde(units)

    end

    subtotal

  end
end
