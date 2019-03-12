require './lib/bank'

RSpec.describe 'Bank' do

  context '#balance' do
    it 'should print balance to the console' do
      account = Bank.new
      expect{account.show_balance}.to output("0").to_stdout
    end
  end

  context '#deposit' do
    it 'should add the amount to the balance' do
      acc = Bank.new
      expect{ acc.deposit(10) }.to change { acc.balance }.by(+10)
    end
  end

  context '#transaction_history' do
    it 'should store deposits in the transaction history' do
      acc = Bank.new
      acc.deposit(10)
      expect(acc.transaction_history).to include(10)
    end
end
