class CashRegister

  attr_accessor :total, :empolyee_discount, :price, :items, :total_of_transaction

  def initialize (empolyee_discount = 0)
    @total = 0
    @empolyee_discount = empolyee_discount
    @items = []
  end

  def discount
    self.empolyee_discount
  end

  def add_item(item, price, quantity = 1)

    @total_of_transaction = self.total += price * quantity
    quantity.times do
      items << item

      end

  end

  def apply_discount
    if @discount == 0
        return "There is no discount to apply."
      else
      self.total_of_transaction = (0.01 * @discount * @total).to_i
      #@total -= @total - (@total * @discount)
     return "After the discount, the total comes to $#{@total_of_transaction}."

    end
end

  def void_last_transaction
    self.total = @total - @total_of_transaction.pop
  end

end
