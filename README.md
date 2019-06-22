# spec
RSpec Introduction

### Steps to do :
* Install first
  > gem install rspec
* Create folder example `spec`
* Inside the folder create file with name `hello_world_spec.rb`
* Write the code like this inside file `hello_world_spec.rb` :
  ```
  class HelloWorld
     def say_hello 
        "Hello World!"
     end
  end

  describe HelloWorld do 
     context “When testing the HelloWorld class” do 
        it "should say 'Hello World' when we call the say_hello method" do 
           hw = HelloWorld.new 
           message = hw.say_hello 
           expect(message).to eq "Hello World!"
        end
     end
  end
  ```
* Run the file :
  > rspec spec hello_world_spec.rb
* if successfully then the result should be like this:
  ```
  Finished in 0.0132 seconds (files took 0.40687 seconds to load)
  1 example, 0 failures
  ```
