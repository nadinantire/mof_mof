require 'rails_helper'

# On the right side of this RSpec.feature, write the test item name like "task management feature" (grouped by do ~ end)
RSpec.feature "Ticket management function", type: :feature do
  # In scenario (alias of it), write the processing of the test for each item you want to check.
  background do 
    @user=User.create!(email: "g@gmail.com", password: "123456")
    end
  
    scenario "Test exhibition list" do
      @ex=Exhibition.create!(title: 'test_exhibition_01')
    
       @ticket= Ticket.create!(phone: '1234567890',user_id:@user.id, exhibition_id:@ex.id)
        
assert @ticket
    
    end
  scenario "Test ticket list" do
@tickets=Ticket.all

    assert  @tickets
  end



  scenario "validation" do
    @ex=Exhibition.create!(title: 'test_exhibition_01')
    
    @ticket= Ticket.create!(phone: '1234567890',user_id:@user.id, exhibition_id:@ex.id)
    expect(@ticket).to be_valid
      end

end