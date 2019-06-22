# if true then run-test-describe else run-app
@isTest = true

class Material

    # example for global method so no need to define Material.new
    # def self.isEmpty
    # end

    # don't change, in my case only for array length 3 
    @@fruits = Array.new(3)
    @@lastLength = 0

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

    # run-app
    if @isTest == false
        m = Material.new
        puts m.isEmpty
        m = Material.new
        m.add("Semangka")
        m.add("Jeruk")
        puts @@fruits[0]
        puts @@fruits[1]
        puts m.getSize
    end

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

            # it "expected result are 3 and 2" do
            #     m = Material.new
            #     m.add("Jambu")
            #     m.add("Durian")
            #     m.add("Sirsak")
            #     expect(m.getSize).to eq 3
            #     # m.delete("Durian")
            #     # expect(m.getSize).to eq 2
            # end

        end
    end
end