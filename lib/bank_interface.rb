require_relative 'transaction'
require_relative 'statement'

class BankInterface
  attr_reader :transaction, :statement

  def initialize(transaction = Transaction.new, statement = Statement.new) # classes being injected into this interface
    @transaction = transaction
    @statement = statement
  end

  def deposit(amount, account)
    @transaction.deposit(amount, account)
  end

  def withdrawal(amount, account)
    @transaction.withdrawal(amount, account)
  end

  def print(account)
    @statement.print(account)
  end
end
