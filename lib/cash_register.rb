class CashRegister

  attr_accessor :total, :price, :items, :last_transaction_amount
  attr_reader :empolyee_discount

  def initialize (empolyee_discount = 20)
    @total = 0
    @empolyee_discount = empolyee_discount
    @items = []
    @last_transaction_amount = []
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

  end

  def apply_discount
    @total = (@total * @discount.to_f / 100).to_i
    if @discount != 0
      "After the discount, the total comes to $#{@total}."     
      else
        "There is no discount to apply."
    end
end

  def void_last_transaction
   @total -= @last_transaction_amount
  end

end
