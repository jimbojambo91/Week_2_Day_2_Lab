require ('minitest/autorun')
require ('minitest/rg')
require_relative('../person')
require_relative('../bus')

class TestPerson < MiniTest::Test

  def setup
   @James = Person.new("James", 25) 
  end


end