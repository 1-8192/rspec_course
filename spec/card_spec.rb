
class Card 

    attr_reader :value, :suit

    def initialize(value, suit)
        @value = value
        @suit = suit
    end

end 

RSpec.describe Card do 
    it 'has a value' do 
        card = Card.new('Ace', 'Spades')
        expect(card.value).to eq('Ace')
    end

    it 'has a suit' do
        card = Card.new('Ace', 'Spades')
        expect(card.suit).to eq('Spades')
    end
end

