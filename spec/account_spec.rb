require_relative '../Account'

describe Account do

  describe 'it has an initial value' do
    empty_account = Account.new
    it 'has an initial numeric value' do
      expect(empty_account.value).to be_a(Fixnum)
    end

    it 'has an initial value of 0' do
      expect(empty_account.value).to eq(0)
    end
  end

  describe 'it has a value that changes after transactions' do
    trial_account = Account.new

    it 'increases in value after deposits' do
      trial_account.add_money(30)
      expect(trial_account.value).to eq(30)
    end

    it 'decreases in value after withdrawals' do
      trial_account.remove_money(15)
      expect(trial_account.value).to eq(15)
    end
  end

  describe 'it has a transaction history' do
    wealthy_account = Account.new
    it 'has an initially empty transaction history' do
      expect(wealthy_account.transaction_history).to be_empty
    end

    it 'has a transaction history represented by an array' do
      expect(wealthy_account.transaction_history).to be_an(Array)
    end

    it 'register deposits in the transaction history' do
      8.times do
        wealthy_account.add_money(500)
      end
      expect(wealthy_account.transaction_history.length).to eq(8)
    end

    it 'registers withdrawals in the transaction history' do
      wealthy_account.remove_money(25)
      expect(wealthy_account.transaction_history.length).to eq(9)
    end
  end

end