require 'minitest/autorun'
require 'minitest/pride'
require './lib/bank'
require './lib/person'

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
  
  def test_it_can_accept_deposit
    chase = Bank.new("JP Morgan Chase")
    wells_fargo = Bank.new("Wells Fargo")
    person1 = Person.new('Minerva', 1000)
    person2 = Person.new('Luna', 500)
  
    assert_equal "750 galleons have been deposited into Minerva's Chase account.  Balance: 750 Cash: 250", chase.deposit(person1, 750)
  end 
  
  def test_it_cannot_deposit_more_than_level_of_cash
    chase = Bank.new("JP Morgan Chase")
    wells_fargo = Bank.new("Wells Fargo")
    person1 = Person.new('Minerva', 1000)
    person2 = Person.new('Luna', 500)
  
    assert_equal "Minerva does not have enough cash to perform this deposit.", chase.deposit(person1, 5000)
  end 
  
  def test_it_can_withdraw_funds
    chase = Bank.new("JP Morgan Chase")
    wells_fargo = Bank.new("Wells Fargo")
    person1 = Person.new('Minerva', 1000)
    person2 = Person.new('Luna', 500)
  
    assert_equal "Minerva has withdrawn 250 galleons.  Balance 250", chase.withdrawl(person1, 250)
  end
  
  def test_it_cannot_withdrawl_more_funds_than_on_hand
    chase = Bank.new("JP Morgan Chase")
    wells_fargo = Bank.new("Wells Fargo")
    person1 = Person.new('Minerva', 1000)
    person2 = Person.new('Luna', 500)
  
    assert_equal "Insufficient funds.", chase.withdrawl(person1, 25000)
  end 
  
  def test_it_can_transfer_funds_to_another_bank
    chase = Bank.new("JP Morgan Chase")
    wells_fargo = Bank.new("Wells Fargo")
    person1 = Person.new('Minerva', 1000)
    person2 = Person.new('Luna', 500)
  
    assert_equal "Minerva has transferred 250 galleons from JP Morgan Chase to Wells Fargo.", chase.transfer(person1, wells_fargo, 250)
  end 
  
  def test_it_cannot_transfer_more_funds_than_their_balance
    chase = Bank.new("JP Morgan Chase")
    wells_fargo = Bank.new("Wells Fargo")
    person1 = Person.new('Minerva', 1000)
    person2 = Person.new('Luna', 500)
  
    assert_equal "Insufficient funds.", chase.transfer(person1, wells_fargo, 25000)
  end 
  
  def test_it_will_deny_transfer_to_another_bank_without_an_account
    chase = Bank.new("JP Morgan Chase")
    wells_fargo = Bank.new("Wells Fargo")
    person1 = Person.new('Luna', 500)
    
    assert_equal "Luna does not have an account with Wells Fargo.", chase.wrong_account(person1, wells_fargo, 250)
  end 
  
  def tests_it_can_tell_total_cash
    chase = Bank.new("JP Morgan Chase")
    wells_fargo = Bank.new("Wells Fargo")
    person1 = Person.new('Minerva', 1000)
    person2 = Person.new('Luna', 500)
  
    assert_equal "Total Cash:  750 galleons", chase.total_cash 
  end 
    
  
end 