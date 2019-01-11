class Transfer
  attr_accessor :sender, :receiver, :status, :amount, :balance

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    sender.valid? && receiver.valid?
  end

  def execute_transaction
    if BankAccount.name(sender).valid? == true
      "blah"
    else
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
  end
end

end
