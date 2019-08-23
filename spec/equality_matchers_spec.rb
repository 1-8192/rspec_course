RSpec.describe 'equality matchers' do 
    let(:a) { 3.0 }
    let(:b) {3}

    describe 'eql matcher' do 
        it 'tests for value, including same type' do 
            expect(a).not_to eql(3)
            expect(a).not_to eql(b)
        end 
    end 

    describe 'equal and be matchers' do 
        let(:c) {  [1, 2, 3] }
        let(:d) { [1,2,3] }
        let(:e) { c }
        
        it 'cares about object identity' do 
            expect(c).to eq(d)
            expect(c).to equal(d)
            expect(c).to equal(e)
        end
    end
end 