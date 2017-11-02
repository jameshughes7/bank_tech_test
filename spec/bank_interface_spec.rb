require 'bank_interface'

describe BankInterface do
  let(:transaction) { double(:transaction) }
  let(:statement) { double(:statement) }
  subject(:bank_interface) { BankInterface.new(transaction, statement) }

  describe '#initialize' do
    it 'should create a new instance of BankInterface' do
      expect(bank_interface).to be_instance_of(BankInterface)
    end

    it 'intialized with @transaction' do
      expect(bank_interface.transaction).to eq(transaction)
    end

    it 'intialized with @statement' do
      expect(bank_interface.statement).to eq(statement)
    end
  end

  describe '#interface interaction' do
    it 'deposit' do
      expect(bank_interface).to respond_to(:deposit).with(2).arguments
    end

    it 'withdrawal' do
      expect(bank_interface).to respond_to(:withdrawal).with(2).arguments
    end

    it 'deposit' do
      expect(bank_interface).to respond_to(:print).with(1).arguments
    end
  end
end
