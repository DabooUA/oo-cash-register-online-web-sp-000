class CashRegister

  attr_accessor :discount, :total, :items, :last_transaction_amount

  def initialize (discount = 0)
    @total = 0
    @discount = discount
    @items = []

  end

  def add_item(item, price, quantity = 1)

    self.total += price * quantity
    quantity.times do
      items << item
    end
    self.last_transaction_amount = amount * quantity

  end

  def apply_discount

    if @discount != 0
       self.total -= (@total * @discount.to_f / 100).to_i
       "After the discount, the total comes to $#{@total}."
      else
      "There is no discount to apply."
    end
end

  def void_last_transaction
   self.total -= self.last_transaction_amount
  end

end
