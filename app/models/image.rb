class Image < ActiveRecord::Base
    mount_uploader :image, ProgramUploader
    belongs_to :program, dependent: :destroy
end
