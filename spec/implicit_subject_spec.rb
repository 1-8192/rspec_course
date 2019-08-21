RSpec.describe Array do 

    it "has initial length of 0" do 
        expect(subject.length).to eq(0)
    end

    it "has more items after push" do 
        subject.push('test')
        expect(subject.length).to eq(1)
    end

end