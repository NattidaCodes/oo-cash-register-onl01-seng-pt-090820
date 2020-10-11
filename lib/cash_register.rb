class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    quantity > 1 ? self.total += (price * quantity) : self.total += price

    while quantity > 0
      items.push(title)
      quantity -= 1
    end

    @last_transaction = quantity
  end

  def apply_discount
    if self.discount > 0
      self.total = (total - (total * (discount/100.0))).to_i
      return "After the discount, the total comes to $#{self.total}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total = @last_transaction
  end

end

# class CashRegister
#   attr_accessor :total, :discount, :quantity, :price
#
#   def initialize(discount = 0)
#     @total = 0
#     @discount = discount
#     @price = price
#     @quantity = quantity
#     @items = []
#     @transactions = []
#   end
#
#   def add_item(title, price, quantity = 1)
#     @total += price * quantity
#     @transactions << price
#     i = quantity
#     until i == 0 do
#       @items << title
#       i -= 1
#     end
#   end
#
#   def apply_discount
#     if @discount == 0
#       "There is no discount to apply."
#     else
#       self.total -= (0.01 * @discount * @total).to_i
#       "After the discount, the total comes to $#{self.total}."
#     end
#   end
#
#   def items
#     @items
#   end
#
#   def void_last_transaction
#     self.total = @total - @transactions.pop
#   end
#
# end
