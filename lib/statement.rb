class Statement
  attr_reader :headings

  def initialize
    @headings = { 'date' => "date", 'credit' => "credit", 'debit' => "debit", 'balance' => "balance" }
  end

  def print(account)
    account.transactions << @headings
    account.transactions.reverse.each do |transaction|
    "#{transaction[:date]} || #{transaction[:credit]} || #{transaction[:debit]} ||#{transaction[:balance]}"
    end
  end

end
