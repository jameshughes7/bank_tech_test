class Account

  attr_reader :transactions, :transaction_record

  def initialize
    @balance = 0
    @transactions = []
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

  def receive_transactions(credit,debit)
    @transaction_record = { 'date' => Time.now.strftime("%d/%m/%y"), 'credit' => credit, 'debit' => debit, 'balance' => @balance }
    @transactions << @transaction_record
  end
end
