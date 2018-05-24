class Person 
  attr_reader :bank,
              :name,
              :cash_amount
              :account_balance
              
  def initialize(name, cash_amount)
    @name            = name 
    @cash_amount     = cash_amount
    @bank            = bank 
    @account_balance = 0
    "#{name} has been created with #{cash_amount} galleons in cash."
  end 
end            

         