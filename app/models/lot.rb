class Lot < ActiveRecord::Base
    belongs_to :program, dependent: :destroy
end
