class Card
  attr_reader :suit, :value, :symbols
  SUIT = [:diamond, :hearts, :spades, :clubs]
  VALUES = (1..13).to_a
  
  def initialize(suit, value)
    @suit = suit
    @value = value
  end

  def self.suit_const
    SUIT
  end

  def self.values_const
    VALUES
  end

  def inspect
    "Suit:#{self.suit} | Value:#{self.value}"
  end
end