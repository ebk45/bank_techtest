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
    @balance += amount
    @transaction_history.push({
      credit: amount,
      date: Date.today.strftime,
      balance: @balance})
  end

  def withdraw(amount)
    raise 'Insufficient Funds' if @balance - amount < 0
    @balance -= amount
    @transaction_history.push({
      debit: amount,
      date: Date.today.strftime,
      balance: @balance})
  end

end
