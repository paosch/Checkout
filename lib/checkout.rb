class Checkout
  attr_reader :total
  def initialize
    @total = 0
    @count_A = 0
  end
  def scan(item)
    if item == 'A'
      @count_A += 1
      @total -= 20 if @count_A % 3 == 0
    end
    @total += 50 if item == 'A'
    @total += 30 if item == 'B'
    @total += 20 if item == 'C'
    @total += 15 if item == 'D'
  end
end
