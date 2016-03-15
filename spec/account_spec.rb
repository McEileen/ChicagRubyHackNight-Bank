require_relative '../Account'

describe Account do

  describe 'it has initial variables' do
    empty_account = Account.new
    it 'has an initial numeric value' do
      expect(empty_account.value).to be_a(Fixnum)
    end

    it 'has an initial value of 0' do
      expect(empty_account.value).to eq(0)
    end
  end

end