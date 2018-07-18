class Checkout
  attr_reader :total
  def initialize
    @total = 0
  end
  def scan(item)
    return @total += 50 if item == 'A'
    return @total += 30 if item == 'B'
  end
end
