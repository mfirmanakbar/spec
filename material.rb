# if true then run-test-describe else run-app
@isTest = true

class Material

    @@fruits = Array.new

    # this method is like Material.new init
    def initialize()
        @@fruits.clear
    end

    def isEmpty
        @@fruits.length > 0 ? true : false
    end

    def add(fruit)
        @@fruits.push(fruit)
    end

    def getSize
        @@fruits.length
    end

    def contains(fruit)
        @@fruits.include?(fruit)
    end

    def delete(fruit)
        @@fruits.delete(fruit)
    end

    def show
        @@fruits
    end

    # run-app
    # if @isTest == false
        # m = Material.new
    # end

end

if @isTest
    describe Material do
        context "This is group to test Material Class" do
            
            it "my expected result is false" do
                m = Material.new
                msg = m.isEmpty
                expect(msg).to eq false            
            end

            it "my expected result is 2" do
                m = Material.new
                m.add("Semangka")
                m.add("Jeruk")
                expect(m.getSize).to eq 2
            end

            it "my expected result is true" do
                m = Material.new
                m.add("Mangga")
                expect(m.contains("Mangga")).to eq true
            end

            it "expected result is 3" do
                m = Material.new
                m.add("Jambu")
                m.add("Durian")
                m.add("Sirsak")
                expect(m.getSize).to eq 3
                m.delete("Durian")
                expect(m.getSize).to eq 2
            end

        end
    end
end