
class Actor
  def initialize(name)
    @name = name
  end

  def ready?
    sleep(3)
    true
  end

  def act 
    'Ill be back.'
  end 

  def fall_off_ladder 
    'no way I do that.'
  end 

  def light_on_fire 
    false 
  end 

end

class Movie 
    attr_reader :actor 

    def initialize(actor)
        @actor = actor 
    end 

    def start_shooting
        if @actor.ready?
            @actor.act 
            @actor.fall_off_ladder
            @actor.light_on_fire
            @actor.act
        end 
    end 
end 

RSpec.describe Movie do 
    let(:stuntman) { double("Mr. Danger", ready?: true, act: 'any string', fall_off_ladder: 'ok come on', light_on_fire: true) }
    subject { described_class.new(stuntman) }

    describe '#start_shooting method' do
       it 'expects to do 3 actions' do 
            # expect(stuntman).to receive(:light_on_fire).once
            # expect(stuntman).to receive(:light_on_fire).exactly(1).times
            expect(stuntman).to receive(:light_on_fire).at_most(4).times
            expect(stuntman).to receive(:act).exactly(2).times

            subject.start_shooting
       end
    end   
end
