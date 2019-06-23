# if true then run-test-describe else run-app
@isTest = true

class Material

    # example for global method so no need to define Material.new
    # def self.isEmpty
    # end

    # don't change, in my case only for array length 3 
    @@fruits = Array.new(3)
    @@lastLength = 0

    # this method is like Material.new init
    def initialize()
        @@lastLength = 0
        @@fruits.clear
    end

    def isEmpty
        @@lastLength > 0 ? true : false
    end

    def add(fruit)
        @@fruits[@@lastLength] = fruit
        @@lastLength = @@lastLength + 1
    end

    def getSize
        @@lastLength
    end

    def contains(fruit)
        @@fruits.include?(fruit)
    end

    def delete(fruit)
        @@fruits.delete(fruit)
        @@lastLength = @@lastLength - 1
    end

    def show
        @@fruits
    end

    # run-app
    # if @isTest == false
        # m = Material.new
        # m.add("Jambu")
        # m.add("Durian")
        # m.add("Sirsak")
        # puts m.getSize
        # puts
        # puts m.show
        # puts
        # m.delete("Durian")
        # puts
        # puts m.show
        # puts
        # puts m.getSize
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