require 'pry'
class CashRegister

  attr_accessor :items, :discount, :total, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(name, price, quantity=1)
    self.total += price * quantity
    quantity.times do
      items << name
    end
  end

  def apply_discount
    if discount != 0
      discount_percent = ((100 - self.discount)/(100))
      self.total *= discount_percent

    else
      "There is no discount to apply."
    end

  end
end
