class CashRegister

  attr_accessor :total, :empolyee_discount, :price, :items

  def initialize (empolyee_discount = nil)
    @total = 0
    @empolyee_discount = empolyee_discount
    @items = []
  end

  def discount
    self.empolyee_discount
  end

  def add_item(item, price, quantity = 1)

    total_of_transaction = self.total += price * quantity
    quantity.times do
      items << item
      end

  end

  def apply_discount
    if @empolyee_discount
      take_off = @price.to_f * (1 - @empolyee_discount / 100)
      @total -= take_off
      return "After the discount, the total comes to #{@total.to_i}."
    else
      return "There is no discount to apply."
    end
end


end
