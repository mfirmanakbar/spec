class Material
    
    def isEmpty
        true
    end

end

describe Material do
    context "This is group to test Material Class" do
        it "the result should be TRUE" do
            m = Material.new
            msg = m.isEmpty
            expect(msg).to eq true            
        end
    end
end