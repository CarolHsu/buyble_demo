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

  desc "test"
  task :test => :environment do
    puts lorem_date
  end

end
