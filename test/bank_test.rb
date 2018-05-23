require 'minitest/autorun'
require 'minitest/pride'
require './lib/bank'

class BankTest < Minitest::Test 
  
  def test_it_exists
    chase = Bank.new("JP Morgan Chase")
    wells_fargo = Bank.new("Wells Fargo")
    
    assert_instance_of Bank, chase 
  end 
  
  def test_it_can_access_person
    chase = Bank.new("JP Morgan Chase")
    wells_fargo = Bank.new("Wells Fargo")
    person1 = Person.new("Minerva", 1000)
    person2 = Person.new("Luna", 500)
    
    assert_instance_of Person, person1
  end 
  
  def test_it_can_create_account_with_person
    chase = Bank.new("JP Morgan Chase")
    wells_fargo = Bank.new("Wells Fargo")
    person1 = Person.new('Minerva', 1000)
    person2 = Person.new('Luna', 500)
  
    assert_equal "An account has been opened for Minerva with JP Morgan Chase.", chase.open_account(person1)
  end  
  
end 