require_relative '../Member'
require_relative '../Account'

describe Member do
  let (:grace_hopper) {Member.new("Grace", "Hopper")}

  describe "first_name" do
    it 'should be readable' do
      expect(grace_hopper.first_name).to eq("Grace")
    end
  end

  describe "last_name" do
    it 'should be readable' do
      expect(grace_hopper.last_name).to eq("Hopper")
    end
  end


  describe "member_id" do
    it 'should be an integer' do
      expect(grace_hopper.member_id).to be_an(Integer)
    end
  end

  describe "#open_new_account" do
    it 'should increase the length of an array by one' do
      num_accounts = grace_hopper.member_accounts.length
      expect{ grace_hopper.open_new_account }.to change(grace_hopper.member_accounts, :length).by(1)
    end
  end

end