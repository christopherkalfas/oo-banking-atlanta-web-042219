class BankAccount
    attr_reader :name 
    attr_accessor :balance, :status, :bank_account

    def initialize(name)
        @name = name
        @bank_account = bank_account
        @balance = 1000
        @status = "open"
    end 

    def deposit(check)
        self.balance += check
    end 

    def display_balance
        "Your balance is $#{self.balance}."
    end 

    def valid?
        self.status == "open" && self.balance > 0 ? true : false
    end 

    def close_account
        self.status = "closed"
    end 

    

end 