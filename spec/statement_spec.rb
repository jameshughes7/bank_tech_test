require 'statement'

describe Statement do
  subject(:statement) { described_class.new }

  describe '#initialize' do
    it 'should create a new instance of Statement class' do
      expect(statement).to be_instance_of(Statement)
    end
  end

  describe '#print statement' do
    it 'should print column headings by default' do
      account = Account.new
      expect(account.transactions).to(be_a(Array))
      expect { statement.print(account) }.to output("date || credit || debit || balance\n").to_stdout
    end

    it 'should print a transaction record' do
      account = Account.new
      account.receive_transactions(100,nil)
      expect(account.transaction_record).to eq("date"=>"14/11/17", "credit"=>100, "debit"=>nil, "balance"=>0)
    end

    it 'should print transactions array' do
      account = Account.new
      account.receive_transactions(100,100)
      expect(account.transactions).to eq(["date"=>"14/11/17", "credit"=>100, "debit"=>100, "balance"=>0])
    end
  end
end
