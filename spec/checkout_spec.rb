require 'checkout'
describe Checkout do
  let(:subject) { Checkout.new }
  it 'starts with total at zero' do
    expect(subject.total).to eq 0
  end
  it "#scan registers 50 when 1 'A' item is scanned" do
    expect { subject.scan('A') }.to change { subject.total }.by(50)
  end
  it "#scan registers 30 when 1 'B' item is scanned" do
    expect { subject.scan('B') }.to change { subject.total }.by(30)
  end
  it "#scan registers 20 when 1 'C' item is scanned" do
    expect { subject.scan('C') }.to change { subject.total }.by(20)
  end
end
