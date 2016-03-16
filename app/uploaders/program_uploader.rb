# encoding: utf-8

class ProgramUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick

  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  process resize_to_fit: [800, 800]

  version :thumb do
    process resize_to_fill: [300,200]
  end

  version :home do
    process resize_to_fill: [1200,510]
  end


end
