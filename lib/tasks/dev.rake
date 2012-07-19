# -*- encoding : utf-8 -*-
require 'lorem_helper'
namespace :dev do

  desc "Rebuild system"
  task :build => ["tmp:clear", "log:clear", "db:drop", "db:create", "db:migrate", "db:seed" ]
  
  desc "Rebuild system"
  task :rebuild => ["tmp:clear", "log:clear", "db:drop", "db:create", "dev:load_old_data", "db:migrate", "db:seed" ]
  
  include LoremHelper

  desc "generate random_product"
  task :generate_random_product => :environment do
    lorem_products(30)
    puts "create fake products"
  end

  desc "generate a test admin"
  task :generate_test_admin => :environment do
    test_admin
    puts "create a test admin"
  end

  def lorem_products(total)
    #generate admin
    total.times do
      product = Product.new
      product.country_id = rand(3) + 1
      product.title = lorem_sentence
      product.description = lorem_paragraphs(3)
      product.ntd = rand(1000) + 2000
      product.stock = rand(100)
      product.discount = rand(100) + 1
      y = 2012
      m = 7
      d = 18
      hr = rand(24)
      min = rand(60)
      sec = rand(60)
      dd = d + rand(6)
      product.on_shelf_time = DateTime.civil(y, m, d, hr, min, sec, 0).to_s
      product.off_shelf_time = DateTime.civil(y, m, dd, hr, min, sec, 0).to_s
      product.save!
      for i in (1..5)
        photo = product.photos.build
        if i == 1
          photo.is_front_cover = true          
        end
        photo.content = lorem_paragraph
        photo.remote_image_url = lorem_image("191x100")
        photo.save!
      end
    end
  end

def test_admin
  u = User.new
  u.email = "admin@mail.com"
  u.password = "admin123"
  u.is_admin = true
  u.save!
end

end
