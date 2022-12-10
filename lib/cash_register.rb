require 'pry'

class CashRegister

    attr_accessor :discount, :total

    def initialize (discount = 0)
        @discount = discount
        @total = 0
    end

    def add_item item, price, quantity = 1
        self.total += (price * quantity)
    end

    def apply_discount
        self.total = self.total - (self.total * (self.discount/100))
    end

end

binding.pry
0