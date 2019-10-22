require('minitest/autorun')
require('minitest/rg')
require_relative('../bus.rb')
require_relative('../person.rb')

class BusRouteTest < MiniTest::Test
  def setup
    @bus = Bus.new(22, "Ocean Terminal", [])

    @passenger1 = Person.new("Slyvester Stallone", 73)
    @passenger2 = Person.new("Bruce Willis", 64)
  end

  def test_drive()
    assert_equal("Brum! Brum!", @bus.drive())
  end

  def test_number_of_passengers()
    assert_equal(0, @bus.number_of_passengers)
  end

  def test_pick_up()
    @bus.pick_up(@passenger1)
    assert_equal(2, @bus.number_of_passengers)
    #.delete_at[i], .slice!(i, 1),
  end

  def test_drop_off
    @bus.drop_off(@passenger1)
    assert_equal(0, @bus.number_of_passengers)
  end

  def test_remove_all_passengers
    @bus.remove_all_passengers
    assert_equal(0, @bus.number_of_passengers)
  end

  
end
