class Statement
  attr_reader :headings

  def initialize
    @headings = %w[date credit debit balance]
  end

  def print
    headers
  end

  def headers
    headings.join ' ' + '||' + ' '
  end
end
