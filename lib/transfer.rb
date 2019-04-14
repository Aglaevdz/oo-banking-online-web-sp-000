class Transfer
  attr_accessor :sender, :amount, :receiver, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    @sender.valid? && @receiver.valid? && @sender.balance > @amount

  end

  def execute_transaction
    if @status == "pending" && valid?
       @sender.balance -= @amount
       @receiver.balance += @amount
       @status = "complete"
    else
<<<<<<< HEAD
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
     end
  end

  def reverse_transfer
    if @status == "complete"
       @receiver.balance -= @amount
       @sender.balance += @amount
       @status = "reversed"
=======
      "Transaction rejected. Please check your account balance."
     end
>>>>>>> c25bd5e1dff2610222f3b2a4ead1d9f74b17b74a
  end
end
end
