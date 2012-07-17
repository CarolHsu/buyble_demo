class Photo < ActiveRecord::Base
  attr_accessible :content, :avatar_cache, :remote_avatar_url, :avatar, :is_front_cover
  mount_uploader :avatar, AvatarUploader
  belongs_to :product

  def is_front_cover?
    is_front_cover
  end
end
