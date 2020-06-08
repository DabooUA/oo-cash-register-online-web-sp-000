class CashRegister

  attr_accessor :total, :empolyee_discount, :price, :items, :last_transaction_amount

  def initialize (empolyee_discount = 0)
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
        counter += 1
      end
    else
      @items << item
      end
    @total += price * quantity
    @last_transaction_amount = @total
    @total
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
      else
      @discount = @discount / 100
      @total = @total - (@total * @discount)
      "After the discount, the total comes to $#{@total}."
    end
end

  def void_last_transaction
   @total -= @last_transaction_amount
  end

end
