class CashRegister

  attr_accessor :total, :empolyee_discount, :price, :items, :total_of_transaction

  def initialize (empolyee_discount)
    @total = 0
    @empolyee_discount = empolyee_discount
    @items = []
  end

  def add_item(item, price, quantity = 1)

    @total_of_transaction = self.total += price * quantity
    quantity.times do
      items << item
      end

  end

  def apply_discount
    if @empolyee_discount > 0
      @empolyee_discount = @empolyee_discount / 100.to_f
      @total -= @total - (@total * @empolyee_discount)
      return "After the discount, the total comes to #{@total.to_i}."
    else
      return "There is no discount to apply."
    end
end


end
