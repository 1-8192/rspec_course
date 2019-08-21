
class Card 

    attr_reader :value, :suit

    def initialize(value, suit)
        @value = value
        @suit = suit
    end

end 

RSpec.describe Card do
    before do 
        @card = Card.new('Ace', 'Spades')
    end 

    it 'has a value' do 
        expect(@card.value).to eq('Ace')
    end

    it 'has a suit' do
        expect(@card.suit).to eq('Spades')
    end
end

