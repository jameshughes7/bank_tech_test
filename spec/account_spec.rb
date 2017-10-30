require 'account'

describe Account do
  subject(:account) { described_class.new(0) }

  it 'should create a new instance of Account class' do
    account = Account.new
    expect(account).to be_instance_of(Account)
  end

  it 'should initialize with a default zero balance' do
    account = Account.new
    expect(account.show_balance).to eq(0)
  end

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
end
