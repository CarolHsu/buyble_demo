class Photo < ActiveRecord::Base
  attr_accessible :content, :avatar_cache, :remote_avatar_url, :avatar
  mount_uploader :avatar, AvatarUploader
  belongs_to :product
end
