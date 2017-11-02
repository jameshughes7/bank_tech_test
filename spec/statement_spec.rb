require 'statement'

describe Statement do
  subject(:statement) { described_class.new }

    describe "#initialize" do
      it 'should create a new instance of Statement class' do
        statement = Statement.new
        expect(statement).to be_instance_of(Statement)
      end
    end

    describe '#print statement' do
      it 'should print column headings by default' do
        statement = Statement.new
        account = Account.new
        statement.print(account)
        expect(account.transactions).to(be_a(Array))
        expect(account.transactions).to include(statement.headings)
      end
    end
end
