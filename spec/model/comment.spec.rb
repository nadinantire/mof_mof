require 'rails_helper'
RSpec.feature "Comment management function", type: :model do
   background do 
    @user=User.create!(email: "g@gmail.com", password: "123456")
    end
  
    scenario "Test comment create" do
      @ex=Exhibition.create!(title: 'test_exhibition_01')
    
       @comment= Comment.create!(content: 'hello',exhibition_id:@ex.id)
        
   assert @comment
    
    end
    scenario "Test comment list" do
      @comments=Comment.all
      
          assert  @comments
        end
  end