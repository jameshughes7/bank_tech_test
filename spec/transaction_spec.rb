require 'transaction'

describe Transaction do
  it 'should create a new instance of Transaction class' do
    transaction = Transaction.new
    expect(transaction).to be_instance_of(Transaction)
  end
end
