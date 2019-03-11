class Bank
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def show_balance
    print @balance
  end

  def deposit(amount)
    @balance += amount
  end

end
