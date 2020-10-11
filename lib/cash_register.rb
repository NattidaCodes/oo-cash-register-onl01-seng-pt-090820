class CashRegister

  attr_accessor :total, :discount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
  end

  def apply_discount()
    @total -= (@total * @discount.to_f / 100).to_i
      if @total == 0
        "There is no discount to apply."
      else
        "After the discount, the total comes to $#{@total}."
      end
  end

  def items
    @items
  end

end
