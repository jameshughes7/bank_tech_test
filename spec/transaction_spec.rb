require 'transaction'

describe Transaction do
  subject(:transaction) { described_class.new }

  it 'should create a new instance of Transaction class' do
    transaction = Transaction.new
    expect(transaction).to be_instance_of(Transaction)
  end

  it 'should make a deposit' do
    transaction = Transaction.new
    expect(transaction).to respond_to(:deposit).with(2).arguments
    account = Account.new
    expect{ transaction.deposit(100, account) }.to change { account.show_balance }.by(100)
  end

end
