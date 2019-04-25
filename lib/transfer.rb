require "pry"

class Transfer
  attr_accessor :sender, :receiver, :status, :amount
  
  def initialize(sender, receiver, transfer_amount=50)
    @sender = sender
    @receiver = receiver
    @amount = transfer_amount
    @status = "pending"

  end 

  def valid?
    if @sender.valid? && @receiver.valid?
      return true
    else 
      false
    end 
  end 

  def execute_transaction
    
   if @sender.balance > @amount && @status == "pending" && self.valid?
    @sender.balance -= @amount
    @receiver.balance += @amount
    @status = "complete"
   else 
      @status = "rejected"
        return "Transaction rejected. Please check your account balance."
   end    
  end 

  def reverse_transfer
    if @status == "complete"
      @sender.balance += @amount
      @receiver.balance -= @amount
      @status = "reversed"
    end 
  end 

  
end
