class Checkout
  attr_reader :total
  PRICE = {'A' => 50, 'B' => 30, 'C' => 20, 'D' => 15}

  def initialize
    @total = 0
    @count_A = 0
    @count_B = 0
  end

  def scan(item)
    if item == 'A'
      @count_A += 1
      @total -= 20 if @count_A % 3 == 0
    end
    if item == 'B'
      @count_B += 1
      @total -= 15 if @count_B % 2 == 0
    end
    @total += PRICE[item]
  end
end
