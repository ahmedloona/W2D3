require 'rspec'
require 'card'

RSpec.describe Card do
  subject(:card) { Card.new(:diamond, 10) }
  
  describe "#initialize" do
    it "sets the suit" do 
      expect(card.suit).to eq(:diamond)
    end

    it "sets the value" do
      expect(card.value).to eq(10)
    end
  end
end