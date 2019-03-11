require './lib/bank'

RSpec.describe 'Bank' do

  context '#balance' do
    it 'should print balance to the console' do
      account = Bank.new
      expect{account.balance}.to output("0").to_stdout
    end
  end

  context '#deposit' do
    it 'should add the amount to the balance' do
      account = Bank.new
      expect{account.deposit(10)}.to change {account.balance}.by(10)
    end
  end
end
