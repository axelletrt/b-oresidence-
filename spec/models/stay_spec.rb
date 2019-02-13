require 'rails_helper'

RSpec.describe Stay, type: :model do

  before(:each) do 
    @stay = Stay.create(checkin_date: "2018-09-27 00:00:00", checkout_date: "2020-02-11 00:00:00")
  end

  context "associations" do 
    describe "tenant" do 
      it { should belong_to(:tenant) }
    end 

    describe "studio" do 
      it { should belong_to(:studio) }

     end 
  end 

  context "callbacks" do 

    #describe "It raises an error if checkout_date is before checkin_date" do 
        #@stay = Stay.create(checkin_date: "2020-02-11 00:00:00", checkout_date: "2018-09-27 00:00:00")
        #@stay.valid?
        #@stay.errors.full_messages.should include("must be after the checkin_date")
    #end
    
    #describe "It raises an error if it overlaps another say"
    #end 

  end 


end
