class Dog
  attr_accessor :name, :bark_volume

  def initialize(name)
    self.name = name
  end

  def bark
    if self.bark_volume == :loud
      return "WOOF!"
    elsif self.bark_volume == :soft
      return "woof!"
    else
      return "woof!"
    end
  end
end

class BigDog < Dog
  def initialize(name)
    self.name = name
    self.bark_volume = :loud
  end
end

class Lizard
  attr_accessor :color
  def initialize(color)
    self.color = color
  end
end
