class Product < ActiveRecord::Base

  attr_accessible :description, :ntd, :title, :country_id, :stock, :on_shelf_time, :off_shelf_time
  has_many :photos

  def available
    if (on_shelf_time <= Time.now && off_shelf_time > Time.now)
      return true
    else
      return false
    end
  end
  
end
