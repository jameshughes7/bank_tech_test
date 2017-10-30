require 'statement'

describe Statement do
  subject(:statement) { described_class.new }

  it 'should create a new instance of Statement class' do
    statement = Statement.new
    expect(statement).to be_instance_of(Statement)
  end

  it 'should show column headings by default' do
    statement = Statement.new
    expect(statement.headers).to include('date || credit || debit || balance')
  end
end
