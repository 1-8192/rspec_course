
class Card 

    attr_reader :value

    def initialize(value)
        @value = value
    end

end 

RSpec.describe 'Card' do 
    it 'has a value' do 
        card = Card.new('Ace of Spades')
        expect(card.value).to eq('Ace of Spades')
    end
end

