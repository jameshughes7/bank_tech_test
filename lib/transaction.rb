require_relative 'account'

class Transaction
  def deposit(amount, account)
    account.credit(amount)
    account.receive_transactions(nil,amount)
  end

  def withdrawal(amount, account)
    account.debit(amount)
    account.receive_transactions(amount,nil)
  end
end
