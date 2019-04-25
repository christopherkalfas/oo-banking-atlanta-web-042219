require 'pry'

class BankAccount
    attr_accessor :balance, :status
    attr_reader :name

    def initialize(name, balance = 1000, status = "open")
        @name = name
        @balance = balance
        @status = status
    end 

    def deposit(income)
        @balance += income
    end 

    def display_balance
       "Your balance is $#{@balance}."
    end 

    def valid?
        if balance > 0 && @status == "open"
            return true
        else
            false
        end 
    end 

    def close_account
        self.status = "closed"
    end 

end
