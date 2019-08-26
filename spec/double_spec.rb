RSpec.describe 'a random double' do 
    it 'only allows defined methods to be invoked' do 
        # stuntman = double('Stunt Double', fall_off_ladder: 'Ouch!')

        # expect(stuntman.fall_off_ladder). to eq('Ouch!')

        stuntman = double('Stunt Double')
        allow(stuntman).to receive(:fall_off_ladder).and_return('Ouch!')
        expect(stuntman.fall_off_ladder).to eq('Ouch!')
    end
end 