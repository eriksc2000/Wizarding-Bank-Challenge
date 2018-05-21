class Person 
  attr_reader  :name,
               :amount,
               :bank_accounts
               
  def initialize(name, amount)
    @name           = name
    @amount         = amount
    @bank_accounts  = bank_accounts
    puts "#{name} has been created with #{amount} galleons in cash."
  end             
end

person1 = Person.new("Minerva", 1000)
person2 = Person.new("Luna", 500)



         