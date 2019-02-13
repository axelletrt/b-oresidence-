require 'rails_helper'

RSpec.describe Studio, type: :model do

  before(:each) do 
    @studio = Studio.create(name: "Studio 1", price: 550.50)
  end

  context "validation" do 

    it "is valid with valid attributes" do
      expect(@studio).to be_a(Studio)
      expect(@studio).to be_valid
    end
  end 


  context "associations" do 

    describe "stays" do 
      it { should have_many(:stays) }
    end 

    describe "tenants" do 
        it { should have_many(:tenants).through(:stays) }
     end 
  end 


end 
