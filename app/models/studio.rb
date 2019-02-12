class Studio < ApplicationRecord
    has_many :stays
    has_many :studios, through: :stays 
end
