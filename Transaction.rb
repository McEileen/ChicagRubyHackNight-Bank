require 'Time'

class Transaction
  @@num_existing_transactions = 0
  attr_reader :member_id, :bank_id
  attr_accessor :money

  def initialize(money)
    @money = money
    @transaction_id = @@num_existing_transactions + 1
    @@num_existing_transactions += 1
    @datetime_created = Time.now
  end



end