require 'checkout'
describe Checkout do
  let(:subject) { Checkout.new }
  it 'starts with total at zero' do
    expect(subject.total).to eq 0
  end
  context 'normal prices' do
    it "#scan registers 50 when 1 'A' item is scanned" do
      expect { subject.scan('A') }.to change { subject.total }.by(50)
    end
    it "#scan registers 30 when 1 'B' item is scanned" do
      expect { subject.scan('B') }.to change { subject.total }.by(30)
    end
    it "#scan registers 20 when 1 'C' item is scanned" do
      expect { subject.scan('C') }.to change { subject.total }.by(20)
    end
    it "#scan registers 15 when 1 'D' item is scanned" do
      expect { subject.scan('D') }.to change { subject.total }.by(15)
    end
    it "#scan registers 100 when 2 'A' items are scanned" do
      2.times { subject.scan('A') }
      expect(subject.total).to eq 100
    end
  end
  context 'special prices' do
    it "#scan registers 130 when 3 'A' items are scanned" do
      3.times { subject.scan('A') }
      expect(subject.total).to eq 130
    end
    it "#scan registers 45 when 2 'B' items are scanned" do
      2.times { subject.scan('B') }
      expect(subject.total).to eq 45
    end
  end
end
