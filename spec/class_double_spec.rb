class Deck 
    def self.build
        #business logic
    end 
end 

class CardGame 
    attr_reader :cards

    def start 
        @cards = Deck.build
    end 

end

RSpec.describe CardGame do 
    it 'can only implement class methods that are defined on a class' do 
        class_double(Deck)
    end 
end 