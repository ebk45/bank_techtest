require './lib/bank'

RSpec.describe 'Bank' do

  context '#balance' do
    it 'should print balance to the console' do
      account = Bank.new()
      expect{account.balance}.to output("0").to_stdout
    end
  end
end
