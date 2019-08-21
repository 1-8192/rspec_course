RSpec.describe Hash do 
    let(:subject) { Hash.new }

    it 'should start empyt' do
        expect(subject.length).to eq(0)
    end 
    
end