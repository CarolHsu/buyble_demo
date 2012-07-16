class Product < ActiveRecord::Base
  attr_accessible :description, :ntd, :title
  mount_uploader :avatar, AvatarUploader
end
