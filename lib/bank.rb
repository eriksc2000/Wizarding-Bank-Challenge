require './lib/person'

class Bank 
  attr_reader   :cash_amount,
                :account_balance
                
  def initialize(bank_name)
    @bank_name       = bank_name
    @account_balance = 0
    @cash_amount     = 1000
    "#{bank_name} has been created."
  end 
  
  def open_account(person)
     "An account has been opened for #{person.name} with #{@bank_name}."
  end 
  
  def deposit(person, amount_deposited)
    if amount_deposited <= person.cash_amount
      @account_balance += amount_deposited 
      @cash_amount -= amount_deposited 
      "#{amount_deposited} galleons have been deposited into #{person.name}'s Chase account.  Balance: #{@account_balance} Cash: #{@cash_amount}"
    else 
      "#{person.name} does not have enough cash to perform this deposit."
    end 
  end 
  
  def withdrawl(person, amount_withdrawn)
    if amount_withdrawn <= @account_balance
      @account_balance -= amount_withdrawn
      @cash_amount += amount_withdrawn
      "#{person.name} has withdrawn #{amount_withdrawn} galleons.  Balance #{@account_balance}"
    else
      "Insufficient funds."
    end 
  end 
  
  def transfer(person, bank_name, transfer_amount)
    if transfer_amount <= @account_balance
      @account_balance -= transfer_amount 
      "#{person.name} has transferred #{amount} galleons from #{@bank_name} to Wells Fargo."
    else
      "Insufficient funds."
    end 
  end 
    
  def wrong_account(person, bank_name, transfer_amount)
    if person.name != @bank_name
      "#{person.name} does not have an account with Wells Fargo."
    end 
  end 
    
  def total_cash
      @cash_amount = cash_amount
  end 
    
end 

# person1 = Person.new("Minerva", 1000)
# chase = Bank.new("JP Morgan Chase")
# chase.open_account(person1)
# chase.deposit(person1, 1000)


