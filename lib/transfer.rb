class Transfer
  attr_accessor :sender, :receiver, :status, :amount, :balance

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    sender.valid? == true && receiver.valid? == true ? true : false
  end

  def execute_transaction
    if valid? == true
      self.new.receiver.deposit(amount)
      receiver.balance

    else
      puts "Transaction rejected. Please check your account balance."
  end
end

end
