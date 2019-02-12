require 'rails_helper'

RSpec.describe Studio, type: :model do
  before(:each) do 
    @studio = Studio.create(name: "studio 1", price: 550.50)
  end
end
