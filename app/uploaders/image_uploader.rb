# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  include CarrierWave::MiniMagick

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.demodulize.underscore}/#{mounted_as}/#{model.id}"
  end

  version :logo do
    process :resize_to_limit => [250, 53]
  end

  version :full do
    process :resize_to_limit => [900, 600]
  end

  version :medium do
    process :resize_to_limit => [370, 200]
  end

  version :preview do
    process :resize_to_limit => [160, 90]
  end

  version :thumb do
    process :resize_to_limit => [100, 67]
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end
end
