require './lib/bank'

RSpec.describe 'Bank' do

  before :each do
    @account = Bank.new
  end

  context '#balance' do
    it 'should print balance to the console' do
      expect{@account.show_balance}.to output("0").to_stdout
    end
  end

  context '#deposit' do
    it 'should add the amount to the balance' do
      expect{ @account.deposit(10) }.to change { @account.balance }.by(+10)
    end
  end

  context '#withdraw' do
    it 'should deduct the amount from the balance' do
      @account.deposit(20)
      expect{ @account.withdraw(10) }.to change { @account.balance }.by(-10)
    end

    it 'raises error if insufficient funds in account' do
      p @account.balance
      expect { @account.withdraw(10) }.to raise_error("Insufficient Funds")
    end
  end

  context '#transaction_history' do
    it 'should store deposits in the transaction history' do
      @account.deposit(10)
      expect(@account.transaction_history).to include(10)
    end
  end
end
