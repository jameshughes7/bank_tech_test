require_relative 'account'

class Transaction

  def deposit(amount,account)
    account.credit(amount)
  end

  def withdrawal(amount,account)
    account.debit(amount)
  end
end
