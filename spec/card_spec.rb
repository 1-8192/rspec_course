class Card
    attr_accessor :value, :suit
    
    def initialize(value, suit)
        @value = value
        @suit = suit
    end

end 

RSpec.describe Card do
    let(:card) { Card.new('Ace', 'Spades') }

    it 'has a value that can change' do 
        expect(card.value).to eq('Ace')
        card.value = 'Queen'
        expect(card.value).to eq('Queen')
    end

    it 'has a suit' do
        expect(card.suit).to eq('Spades')
    end
end

