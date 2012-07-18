class Product < ActiveRecord::Base

  attr_accessible :description, :ntd, :title, :country_id, :stock, :on_shelf_time, :off_shelf_time
  has_many :photos

  scope :available, where(["on_shelf_time <= ? and off_shelf_time > ?", Time.now, Time.now])

  Country_categories = {
    1 => "Japan",
    2 => "Korea",
    3 => "US"
  }
  
end
