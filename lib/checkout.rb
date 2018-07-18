class Checkout
  attr_reader :total
  def initialize
    @total = 0
  end
  def scan(item)
    return @total += 50 if item == 'A'
    return @total += 30 if item == 'B'
    return @total += 20 if item == 'C'
    return @total += 15 if item == 'D'
  end
end
