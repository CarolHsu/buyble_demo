class Photo < ActiveRecord::Base
  attr_accessible :content, :image_cache, :remote_image_url, :image, :is_front_cover
  mount_uploader :image, ImageUploader
  belongs_to :product

  def is_front_cover?
    is_front_cover
  end
end
