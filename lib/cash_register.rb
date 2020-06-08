class CashRegister

  attr_accessor :total, :empolyee_discount, :price, :items, :total_of_transaction

  def initialize (empolyee_discount = nil)
    @total = 0
    @empolyee_discount = empolyee_discount
    @items = []
  end

  def discount
    self.empolyee_discount
  end

  def add_item(item, price, quantity = 1)

    if quantity > 1
      counter = 0
      while counter < quantity
        @items << item
      end
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
      else
      self.total -= (0.01 * @discount * @total).to_i
      #@total -= @total - (@total * @discount)
      "After the discount, the total comes to $#{@total}."
    end
end

  def void_last_transaction
    self.total = @total - @total_of_transaction.pop
  end

end
