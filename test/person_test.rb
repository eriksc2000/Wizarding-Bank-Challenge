require 'minitest/autorun'
require 'minitest/pride'
require './lib/person'

class PersonTest < Minitest::Test
    
  def test_it_exists
   person1 = Person.new("Minerva", 1000)
   person2 = Person.new("Luna", 500)
   assert_instance_of Person, person1
  end 
  
  def test_it_has_attributes 
    person1 = Person.new("Minerva", 1000)
    person2 = Person.new("Luna", 500)
    assert_equal "Minerva", person1.name
    assert_equal 1000, person1.amount
    assert_equal "Luna", person2.name
    assert_equal 500, person2.amount
  end  
end