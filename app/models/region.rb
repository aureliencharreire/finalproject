class Region < ActiveRecord::Base
    has_many :departements
    has_many :programs
end
