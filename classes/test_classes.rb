require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/spec'
require_relative 'classes.rb'

describe "Learning about Class" do
  it "Define a Dog class" do
    assert_equal Class, Dog.class
  end

  it "Dog's should be initialized with their names" do
    dog = Dog.new("Riley")

    assert_equal "Riley", dog.name
  end

  it "Dog's names can be changed after being created" do
    dog = Dog.new("Riley")

    dog.name = "Fido"

    assert_equal "Fido", dog.name
  end

  it "Dog's can bark" do
    dog = Dog.new("Riley")

    assert_equal "woof!", dog.bark
  end

  it "Dog's know if they bark loud" do
    dog = Dog.new("Riley")

    dog.bark_volume = :loud
    assert_equal "WOOF!", dog.bark
  end

  it "Dog's know if they bark loud or soft" do
    dog = Dog.new("Riley")

    assert_equal "woof!", dog.bark

    dog.bark_volume = :loud
    assert_equal "WOOF!", dog.bark

    dog.bark_volume = :soft
    assert_equal "woof!", dog.bark
  end

  it "There is a BigDog as well" do
    assert_equal Class, BigDog.class
  end

  it "BigDog is a subclass of Dog" do
    assert BigDog.ancestors.include?(Dog)
  end

  it "BigDogs also have names" do
    loud_big_dog = BigDog.new("Fido")

    assert_equal "Fido", loud_big_dog.name
  end

  it "BigDog default bark_volume is :loud" do
    loud_big_dog = BigDog.new("Fido")

    assert_equal "WOOF!", loud_big_dog.bark
  end

  it "Define a Lizard class that knows it's color" do
    lizard = Lizard.new("green")

    assert_equal "green", lizard.color
  end

  it "When a big dog greets a red lizard it barks" do
    skip
    lizard = Lizard.new("red")
    dog    = BigDog.new("Sparky")

    # ignore this line
    dog.stub(:bark, "You returned WOOF! but not by calling bark") do

      # Here is the test
      assert_equal dog.bark, dog.greet(lizard), "Oops, the dog should bark!"
    end
  end

  it "When a big dog greets a green lizard it does nothing" do
    skip
    lizard = Lizard.new("green")
    dog    = BigDog.new("Sparky")

    assert_nil dog.greet(lizard)
  end

  it "When a little dog greets a red lizard it does nothing" do
    skip
    lizard = Lizard.new("red")
    dog    = Dog.new("Riley")

    assert_nil dog.greet(lizard)
  end

  it "When a little dog greets a green lizard it does nothing" do
    skip
    lizard = Lizard.new("green")
    dog    = Dog.new("Riley")

    assert_nil dog.greet(lizard)
  end
end
