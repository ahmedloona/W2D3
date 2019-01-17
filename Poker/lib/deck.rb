require_relative "card.rb"

class Deck
  attr_reader :store

  def initialize(shuffle = true)
    @store = []
    populate
    shuffle_deck if shuffle
  end

  def populate
    Card.suit_const.each do |suit|
      Card.values_const.each do |value|
        self.store << Card.new(suit, value)
      end
    end
  end

  def shuffle_deck
    self.store.shuffle!
  end
end