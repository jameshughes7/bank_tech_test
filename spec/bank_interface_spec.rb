require 'bank_interface'

describe BankInterface do
  subject(:bank_interface) { BankInterface.new(transaction, statement) }
  let(:transaction) { double(:transaction) }
  let(:statement) { double(:statement) }

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

end
