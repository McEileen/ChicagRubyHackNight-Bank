require_relative '../Bank'

describe Bank do
  let(:new_bank) { Bank.new }

  describe "#list_of_members" do
    it 'should be readable' do
      expect(new_bank.list_of_members.length).to eq(0)
    end
    it 'should be equal to zero when a new bank is created' do
      expect(new_bank.list_of_members.length).to eq(0)
    end

  end

  describe '#add_member' do
    it 'should make one more be a customer of the bank' do
      new_bank.add_member("Bob", "Smith")
      list_of_members = new_bank.list_of_members
      expect(list_of_members.length).to eq(1)
    end
  end

  describe '#display_members' do
    it 'should display all members of the bank' do
      new_bank.add_member("Bob", "Stevenson")
      new_bank.add_member("Jana", "Phillips")
      expect(new_bank.display_members).to eq(["Bob Stevenson", "Jana Phillips"])
    end
  end

end
