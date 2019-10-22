require('minitest/autorun')
require('minitest/rg')
require_relative('../bear.rb')
require_relative('../fish.rb')
require_relative('../rivers.rb')

class BearFishRivers < MiniTest::Test

def setup

  @fish1 = Fish.new("Salmon")
  @fish2 = Fish.new("Haddock")
  @fish3 = Fish.new("Nemo")
  @fish4 = Fish.new("Tiger Shark")

  @river = River.new("The Almond")

  @bear = Bear.new("Baloo", "Moon Bear")

  @river.add_fish(@fish1)
  @river.add_fish(@fish2)
  @river.add_fish(@fish3)
  @river.add_fish(@fish4)

end

def test_number_of_fish_in_river()
  assert_equal(4, @river.fish.length())
end

def test_number_of_fish_in_bear()
  assert_equal(0, @bear.stomach.length())
end

def test_add_fish_to_river()
  @river.add_fish(@fish1)
  assert_equal(5, @river.fish.length())
end

def test_add_fish_to_bear()
  @bear.add_fish(@fish2)
  assert_equal(1, @bear.stomach.length())
end

def test_remove_fish_from_river()
  @river.remove_fish(@fish3)
  assert_equal(3, @river.fish.length())
end

def test_remove_fish_from_bear()
  @bear.add_fish(@fish2)
  @bear.remove_fish(@fish2)
  assert_equal(0, @bear.stomach.length())
end

def test_clear_fish_from_river()
  @river.clear_fish()
  assert_equal(0, @river.fish.length())
end

def test_fish_in_river_count()
  @river.fish_count()
  assert_equal(4, @river.fish.length())
end

def test_fish_in_bear_count()
  @bear.fish_count()
  assert_equal(0, @bear.stomach.length())
end

def test_bear_can_roar()
  assert_equal("Meow!", @bear.can_roar())
end

def test_can_find_fish_by_name()
  fish_name = @river.find_fish_by_name("Salmon")
  assert_equal("Salmon", fish_name.name)
end



def test_can_bear_take_fish_from_river()

  bear = @bear
  @river.can_bear_take_fish_from_river("Nemo", bear)
  assert_equal(3, @river.fish.length())
  assert_equal(1, @bear.stomach.length())
  assert_nil(@river.find_fish_by_name("Nemo"))
  assert_equal("Nemo", @bear.find_fish_by_name("Nemo").name)

end

end
