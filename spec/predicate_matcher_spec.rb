RSpec.describe 'predicate matchers' do 
    it 'can be tested with ruby methods' do
        result = 16 / 2
        expect(result.even?).to eq(true)
    end 

    it 'can use rspec matchers' do
        expect(16 / 2).to be_even
        expect(15 / 3).to be_odd
    end
end