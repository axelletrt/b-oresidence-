class Tenant < ApplicationRecord
    has_many :stays
    has_many :tenants, through: :stays
end
