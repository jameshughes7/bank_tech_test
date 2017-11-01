require_relative 'account'

class Transaction

  def initialize
    @transactions = []
  end

  def deposit(amount,account)
    account.credit(amount)
  end


end
