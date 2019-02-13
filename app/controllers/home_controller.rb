class HomeController < ApplicationController

  def index
    @tenants = Tenant.all
    @stays = Stay.all 
    @studios = Studio.all 
  end

end
