require 'account'

describe Account do
  subject(:account) { described_class.new(0) }

  describe '#initialize' do
    it 'should create a new instance of Account class' do
      account = Account.new
      expect(account).to be_instance_of(Account)
    end

    it 'should initialize with a default zero balance' do
      account = Account.new
      expect(account.show_balance).to eq(0)
    end

    it 'should initialize with a empty transaction array' do
      account = Account.new
      expect(account.transactions).to eq([])
    end
  end

  describe '#account can receive data' do
    it 'should be able to receive a credit' do
      account = Account.new
      expect(account).to respond_to(:credit).with(1).argument
      account.credit(100)
      expect(account.show_balance).to eq(100)
    end

    it 'should be able to receive a debit' do
      account = Account.new
      expect(account).to respond_to(:debit).with(1).argument
      account.debit(100)
      expect(account.show_balance).to eq(-100)
    end

    it 'should be able to receive transaction_records' do
      account = Account.new
      expect(account).to respond_to(:receive_transactions).with(2).arguments
      account.receive_transactions(100, nil)
      expect(account.transaction_record).to(be_a(Hash))
      expect(account.transactions[0]).to eq(account.transaction_record)
    end
  end
end
