class ProfessionalWrestler
    attr_reader :name, :finishing_move

    def initialize(name, finishing_move)
        @name = name 
        @finishing_move = finishing_move
    end
end 

RSpec.describe 'have_attributes matcher' do 
    describe ProfessionalWrestler.new('Stone Cold', 'Stunner') do 
        it 'checks for object attributes' do 
            expect(subject).to have_attributes({ name: 'Stone Cold', finishing_move: 'Stunner'})
        end 

        it { is_expected.to have_attributes({ name: 'Stone Cold', finishing_move: 'Stunner'})}
    end 
end 