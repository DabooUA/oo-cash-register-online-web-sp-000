class CashRegister

  attr_accessor :price, :total, :items, :last_transaction_amount
  attr_reader :discount

  def initialize (discount = 20)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction_amount = []
  end

  def add_item(item, price, quantity = 1)

    self.total += price * quantity
    quantity.times do
      items << item
    end
    @last_transaction_amount = amount * quantity

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
