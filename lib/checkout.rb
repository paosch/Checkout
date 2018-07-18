class Checkout
  attr_reader :total
  PRICE = {'A' => 50, 'B' => 30, 'C' => 20, 'D' => 15}
  DISCOUNTS = {'A' => {:quantity => 3, :discount => 20},
               'B' => {:quantity => 2, :discount => 15} }

  def initialize
    @total = 0
    @count = 0
  end

  def scan(item)
    if (offers = DISCOUNTS[item])
      @count += 1
      @total -= offers[:discount] if @count % offers[:quantity] == 0
    end
    @total += PRICE[item]
  end
end
