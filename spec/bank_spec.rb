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
      expect { @account.withdraw(10) }.to raise_error("Insufficient Funds")
    end
  end

  context '#transaction_history' do
    it 'should store the type of transaction, date and balance at time of transaction' do
      allow(Date).to receive_message_chain(:today, :strftime).and_return('2019-10-03')
      @account.deposit(10)
      @account.withdraw(5)
      expect(@account.transaction_history).to include({credit: 10, date: '2019-10-03', balance: 10}, {debit: 5, date: '2019-10-03', balance: 5})
    end
  end
end
