require 'checkout'
describe Checkout do
  it 'starts with total at zero' do
    expect(Checkout.new.total).to eq 0
  end
end
