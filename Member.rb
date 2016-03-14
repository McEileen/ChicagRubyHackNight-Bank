class Member
  attr_reader :member_accounts, :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @member_accounts = []
  end

  def open_new_account
    # need to fill in method
  end

end