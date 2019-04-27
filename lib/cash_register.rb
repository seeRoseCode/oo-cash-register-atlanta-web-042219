require 'pry'
class CashRegister

  attr_accessor :total, :employee_discount, :items

def initialize(employee_discount = 0)
  @total = 0
  @employee_discount = employee_discount
  @items = []
end


def add_item(title, price, quantity = 1)
  @total = @total + price
end

def discount
  if @employee_discount == 0
    return "There is no discount to apply"
  else
    total = @total - @employee_discount
    return total
  end
end

def items
  @items
end

end
