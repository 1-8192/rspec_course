RSpec.describe 'Card' do 
    it 'has a value' do 
        card = Card.new('Ace of Spades')
        expect(card.value).to eq('Ace of Spades')
    end
end