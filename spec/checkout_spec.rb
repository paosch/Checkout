require 'checkout'
describe Checkout do
  let(:subject) { Checkout.new }
  it 'starts with total at zero' do
    expect(subject.total).to eq 0
  end
  it "#scan registers 50 when 1 'A' item is scanned" do
    expect { subject.scan('A') }.to change { subject.total }.by(50)
  end
end
