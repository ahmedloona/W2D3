require "rspec"
require "deck"

RSpec.describe Deck do 
  subject(:deck) { Deck.new }
  describe "Deck#initialize" do
    it "returns a full deck of cards" do
      expect(deck.store.size).to eq(52)
    end

    it "shuffles the deck of cards" do
      expect(deck.store).to_not eq(Deck.new(false))
    end
  end
end