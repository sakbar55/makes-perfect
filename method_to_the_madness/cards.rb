
class Card
  attr_accessor :suit, :name

  def initialize(suit, name)
    self.suit = suit
    self.name = name
  end
end

class Hand
  def initialize
    @cards = []
  end

  # create an add_card method

  # create a has_suit? method
end

ace_of_hearts = Card.new("Hearts", "Ace")
two_of_spades = Card.new("Spades", "2")
five_of_clubs = Card.new("Clubs", "5")

hand = Hand.new
hand.add_card(ace_of_hearts)
hand.add_card(five_of_clubs)
hand.add_card(two_of_spades)

if hand.has_suit?("Hearts") != true
  puts "❌    FAIL - SHOULD HAVE HEARTS"
end

if hand.has_suit?("Diamonds") != false
  puts "❌    FAIL - THERE SHOULDN'T BE DIAMONDS"
end
