class Bank
  attr_reader :balance, :transaction_history

  def initialize
    @balance = 0
    @transaction_history = []
  end

  def show_balance
    print @balance
  end

  def deposit(amount)
    @transaction_history.push(amount)
    @balance += amount
  end

  def withdraw(amount)
    raise 'Insufficient Funds' if @balance - amount < 0
    @balance -= amount
  end

end
