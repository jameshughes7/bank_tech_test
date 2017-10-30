class Account
  def initialize
    @balance = 0
  end

  def show_balance
    @balance
  end

  def credit(amount)
    @balance += amount
    @balance
  end

  def debit(amount)
    @balance -= amount
    @balance
  end
end
