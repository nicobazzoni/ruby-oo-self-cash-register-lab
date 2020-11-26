class CashRegister 
    attr_accessor :total, :discount, :price, :items,
    :last_transaction
    
 def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @transactions = []
    @price = price
   end

 def add_item(item, price, quantity = 1)
    @price = price
    @total += price * quantity 
    if quantity > 1
        counter = 0
        while counter < quantity 
            @items << item 
            counter += 1
        end
     else
        @items << item 

    end
 end


    def apply_discount
        if @discount == 0
          "There is no discount to apply."
        else
          self.total -= (0.01 * @discount * @total).to_i
          "After the discount, the total comes to $#{self.total}."
        end
      end
    
   def items
    @items
  end

  def void_last_transaction
    self.total -= self.last_transaction[1] * self.last_transaction[2]
    self.last_transaction[2].times do
      self.items.delete_at(self.items.index(self.last_transaction[0]) || self.items.count)
    end
  end

end
  


