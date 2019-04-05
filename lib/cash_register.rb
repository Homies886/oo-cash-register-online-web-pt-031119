class CashRegister
  
  attr_accessor :total, :discount, :last_trans
  
  def initialize(discount=20)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity=1)
    self.total += (price * quantity)
    while quantity > 0
      @items << item
      quantity -= 1
    end
  end

  def apply_discount
    if @discount > 0
      "After the discount, the total comes to $#{ @total -= @discount * 10}."
    else
      "There is no discount to apply"
    end
  end
  
  def items
    @items
  end  
    
end