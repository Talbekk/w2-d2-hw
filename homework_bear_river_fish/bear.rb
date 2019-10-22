class Bear

  attr_reader :name, :type, :stomach

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

def add_fish(fish)
  @stomach.push(fish)
end

def remove_fish(fish)
  @stomach.delete(fish)
end

def fish_count()
  return @stomach.length
end

def can_roar()
  return "Meow!"
end

def find_fish_by_name(name)
  for fish in @stomach
    if (fish.name == name)
      return fish
    end
  end
  return nil
end

end
