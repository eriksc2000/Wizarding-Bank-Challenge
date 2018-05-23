require './lib/person'

class Bank 
  attr_reader   :name,
                :cash_amount,
                :account_balance
                
  def initialize(bank_name)
    @bank_name       = bank_name
    @name            = name
    @account_balance = 0
    puts "#{bank_name} has been created."
  end 
  
  def open_account(name)
    puts "An account has been opended for #{name} with #{bank_name}."
  end 

  
end 

chase = Bank.new("JP Morgan Chase")
chase.open_account(person1)


