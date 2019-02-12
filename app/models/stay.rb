class Stay < ApplicationRecord
    belongs_to :tenant
    belongs_to :studio 
end
