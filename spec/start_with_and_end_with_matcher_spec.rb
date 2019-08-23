RSpec.describe 'start with and end with matchers' do 
    describe 'caterpillar' do 
        it 'should check for substring' do 
            expect(subject).to start_with('cat')
            expect(subject).to end_with('pillar')
            expect(subject).to start_with('Cat')
        end 
    
        it { is_expected.to start_with('cat') }
    end 
end 
