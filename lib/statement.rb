class Statement
  attr_reader :headings

  def initialize
    @headings = { 'date' => 'date', 'credit' => 'credit', 'debit' => 'debit', 'balance' => 'balance' }
  end

  def print(account)
    account.transactions << @headings
    printout = account.transactions.reverse.each do |transaction|
      puts "#{transaction['date']} || #{transaction['credit']} || #{transaction['debit']} || #{transaction['balance']}"
    end
  end
end
