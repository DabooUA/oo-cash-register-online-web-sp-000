class CashRegister

  attr_accessor :total, :empolyee_discount, :price, :items

  def initialize (empolyee_discount = nil)
    @total = 0.00
    @empolyee_discount = empolyee_discount
    @items = []
  end

  def discount
    self.empolyee_discount
  end

  def add_item(item, price, quantity = 1)

    self.total += price * quantity
    quantity.times do
      items << items
      end

  end

  def apply_discount
    if @empolyee_discount
      take_off = @total * (1 - @empolyee_discount / 100)
      @total -= take_off
      return "After the discount, the total comes to #{total}"
    else
      return "Ther is no discount to apply"
    end
end


end
