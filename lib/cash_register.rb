class CashRegister

  attr_accessor :total, :discount, :items

  def initialize (discount = 0, total = 0)
    @total = total
    @discount = discount
    @items= []
  end

  def add_item (title, price, quantity)
      @price = price
      @quantity = quantity
    @total += price * quantity
    @items << title
  end

  def apply_discount
    if @discount != 0
      @total -= @total * @discount / 100.0
      puts "After the discount, the total comes to #{@total}."
    else
      puts "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @items.delete_at(-1)
    if @items.size == 0
      @total == 0.0
    else
      @total -= @price * @quantity
    end
  end

end
