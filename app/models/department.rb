class Department < ActiveRecord::Base
    belongs_to :region
    has_many :programs
end
