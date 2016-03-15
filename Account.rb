require_relative 'transaction'
class Account
  @@num_existing_accounts = 0
  attr_reader :member_id, :bank_id
  attr_accessor :transaction_history, :value

  def initialize()
    @value = 0
    @transaction_history = []
  end

  def add_money(money)
    @value = @value + money
    @transaction_history = @transaction_history << Transaction.new(money)
  end

  def remove_money(money)
    @value = @value - money
    @transaction_history = @transaction_history << Transaction.new(money)
  end


end