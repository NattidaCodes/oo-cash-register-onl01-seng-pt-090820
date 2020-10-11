class CashRegister

  attr_accessor :total, :discount

  def initialize(discount = 20)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
  end

  def apply_discount()
    @total -= (@total * @discount.to_f / 100).to_i
      if @discount == 0
        "There is no discount to apply."
      else
        "After the discount, the total comes to $#{@total}."
      end
  end

end
