class CashRegister

attr_accessor :total, :discount

def initialize (discount)
  @total = 0
  @discount = discount
  @items= []
end

def add_item (title, price, quantity)
  @total += price * quantity
  @items << title
end

def apply_discount
  if @discount != 0 do
    @total -= @total * @discount / 100.0
    puts "After the discount, the total comes to #{@total}."
  else
    puts "There is no discount to apply."
  end
end

def items
  @items
end

end
