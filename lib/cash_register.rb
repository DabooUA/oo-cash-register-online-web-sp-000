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
    if @discount
       @total_of_transaction = @total_of_transaction * (1 - @discount / 100.to_f)
       #@total -= @total - (@total * @discount)
      return "After the discount, the total comes to $#{@total.to_i}."
    else
      return "There is no discount to apply."
    end
end

  def void_last_transaction
    @total -= @total_of_transaction.pop
  end

end
