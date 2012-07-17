class Product < ActiveRecord::Base

  attr_accessible :description, :ntd, :title,:avatar_cache, :remote_avatar_url, :avatar, :country_id, :stock, :on_shelf_time, :off_shelf_time
  mount_uploader :avatar, AvatarUploader
  has_many :avatars

  def available
    if (on_shelf_time <= Time.now && off_shelf_time > Time.now)
      return true
    else
      return false
    end
  end
  
end
