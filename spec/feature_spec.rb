require './lib/bank'

RSpec.describe 'Bank Feature:' do

  context '#Example Interaction 1' do
    it 'prints formatted statement after multiple transactions' do
      account = Bank.new
      account.deposit(1000)
      account.deposit(2000)
      account.withdraw(500)
      expect(account.print_statement).to eq('date || credit || debit || balance\n14/01/2012 || || 500.00 || 2500.00\n13/01/2012 || 2000.00 || || 3000.00\n10/01/2012 || 1000.00 || || 1000.00')
    end
  end
end
