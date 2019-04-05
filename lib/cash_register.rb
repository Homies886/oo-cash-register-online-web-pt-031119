class CashRegister
  
  attr_accessor :total, :discount, :last_trans
  
  def initialize(discount = 20)
    @total = 0
    @discount = discount
  end

  def add_item(item, price, quantity = 1)

  end



end