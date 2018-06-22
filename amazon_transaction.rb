# Code your cash register here!
class AmazonTransaction

  attr_accessor :total, :items, :discount, :lastPrice

  def initialize(discount = 0)
    @total = 0
    @items = []
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    @lastPrice = price
    @total += price * quantity
    for i in 0..quantity - 1
      @items << title
    end
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      a = 100.0 - @discount
      b = a / 100.0
      @total = @total * b
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def cancel
    @total = @total - @lastPrice
  end

end