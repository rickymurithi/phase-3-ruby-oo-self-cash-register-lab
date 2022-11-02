class CashRegister
    attr_accessor :total, :discount

    def initialize discount = 0
        @total = 0
        @discount = discount
        @amount = []
        @items = []
    end
    def add_item title, price, quantity=1
        quantity.times {@items << title}
        @amount << price*quantity
        @total += price*quantity
    end
    def apply_discount
        @total=(100-@discount)*@total/100
        @discount > 0 ? "After the discount, the total comes to $#{@total}." : "There is no discount to apply."
    end
    def items
        @items
    end
    def void_last_transaction
        @total -= @amount.last
    end
end