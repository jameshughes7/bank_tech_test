require 'transaction'

describe Transaction do
  subject(:transaction) { described_class.new }

  describe '#transaction' do
    it 'should create a new instance of Transaction class' do
      transaction = Transaction.new
      expect(transaction).to be_instance_of(Transaction)
    end
  end

  describe '#should receive data' do
    it 'should make a deposit' do
      transaction = Transaction.new
      expect(transaction).to respond_to(:deposit).with(2).arguments
      account = Account.new
      expect { transaction.deposit(100, account) }.to change { account.show_balance }.by(100)
    end

    it 'should make a withdrawal' do
      transaction = Transaction.new
      expect(transaction).to respond_to(:withdrawal).with(2).arguments
      account = Account.new
      expect { transaction.withdrawal(100, account) }.to change { account.show_balance }.by(-100)
    end

    it 'should receive debit transaction record' do
      transaction = Transaction.new
      account = Account.new
      account.receive_transactions(nil, 100)
      expect(account.transactions[0]).to eq(account.transaction_record)
      expect(account.transactions[0]).to eq('date' => Time.now.strftime('%d/%m/%y'), 'credit' => nil, 'debit' => 100, 'balance' => 0)
    end

    it 'should receive credit transaction record' do
      transaction = Transaction.new
      account = Account.new
      account.receive_transactions(100, nil)
      expect(account.transactions[0]).to eq(account.transaction_record)
      expect(account.transactions[0]).to eq('date' => Time.now.strftime('%d/%m/%y'), 'credit' => 100, 'debit' => nil, 'balance' => 0)
    end
  end
end
