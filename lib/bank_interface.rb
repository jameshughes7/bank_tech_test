class BankInterface

  attr_reader :transaction, :statement

  def initialize(transaction = Transaction.new, statement = Statement.new)
    @transaction = transaction
    @statement = statement
  end

end
