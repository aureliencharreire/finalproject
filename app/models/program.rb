class Program < ActiveRecord::Base
    belongs_to :region, dependent: :destroy
    belongs_to :department, dependent: :destroy
    has_many :images
    has_many :lots
    enum pricedisplay: [:complet, :partiel, :aucun]
end
