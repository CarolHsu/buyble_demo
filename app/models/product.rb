class Product < ActiveRecord::Base

  attr_accessible :description, :ntd, :title,:avatar_cache, :remote_avatar_url, :avatar
  mount_uploader :avatar, AvatarUploader
  
end
