require 'rails_helper'

RSpec.describe Tenant, type: :model do

  before(:each) do 
    @tenant = Tenant.create(email: "email@addresse.foo")
  end

  context "validation" do 

    it "is valid with valid attributes" do
      expect(@tenant).to be_a(Tenant)
      expect(@tenant).to be_valid
    end


    it { should allow_value("email@addresse.foo").for(:email) }
  end 

  context "associations" do 

    describe "stays" do 
      it { should have_many(:stays) }
    end 

    describe "studios" do 
        it { should have_many(:studios).through(:stays) }
     end 
  end 

end
