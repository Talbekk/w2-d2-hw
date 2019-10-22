class River

attr_reader :name, :fish

def initialize(name)
    @name = name
    @fish = []

end

def add_fish(fish)
  @fish.push(fish)
end

def remove_fish(fish)
  @fish.delete(fish)
end

def clear_fish()
  @fish.clear()
end

def fish_count()
  return @fish.length
end

def find_fish_by_name(name)
  for fish in @fish
    if (fish.name == name)
      return fish
    end
  end
  return nil
end


def can_bear_take_fish_from_river(fish_name, bear)
  fish = find_fish_by_name(fish_name)
  bear.add_fish(fish)
  remove_fish(fish)
end

end
