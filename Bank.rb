# PSEUDOCODE
# Create a bank class
# 	holds list of members
#	methods to add member, display members, search for member
#	method to calculate total money for all accounts together
# Create an account class
#	has default value of zero
#	method to add/withdraw funds
#	above method will create a new instance of the transaction class
#	has a transaction history
# Create a member class
#	has a first and last name
#	method to open account
# Create a transaction class
#	date and time variable (datetime stamp)
#	amount of the transaction
#	has an id

require_relative 'member'
class Bank
  @@num_existing_banks = 0
  attr_reader :bank_id
  attr_accessor :list_of_members

  def initialize
    @list_of_members = []
    @bank_id = @@num_existing_banks + 1
  end

  def add_member(first_name, last_name)
    @list_of_members << Member.new(first_name, last_name)
  end

  def display_members
    @list_of_members.each_with_object([]) do |member, list|
        list << (member.member_id.to_s + " " + member.first_name + " " + member.last_name)
    end
  end

  def find_member_by_name(first_name, last_name)
    @list_of_members.each do |member|
      if member.first_name == first_name && member.last_name == last_name
        return member
      end
    end
    return "Sorry, there is no member with that name."
  end

end