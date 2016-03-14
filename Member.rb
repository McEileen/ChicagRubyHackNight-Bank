require_relative 'account'
class Member
  @@num_existing_members = 0
  attr_reader :member_accounts, :first_name, :last_name, :member_id

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @member_id = @@num_existing_members + 1
    @@num_existing_members = @@num_existing_members + 1
    @member_accounts = []
  end

  def open_new_account
    @member_accounts << Account.new
  end

end