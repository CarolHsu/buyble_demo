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
    puts lorem_word
  end

end
