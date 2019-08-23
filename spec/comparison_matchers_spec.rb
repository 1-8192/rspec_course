RSpec.describe 'comparison matchers' do 
    it 'allows for comparison with Ruby operators' do 
        expect(10).to be > 5
        expect(10).to be < 15
        expect(10).to be >= 10
        expect(10).to be 5 + 5
    end 

    describe 100 do 
        it { is_expected.to be > 90 }
    end

end