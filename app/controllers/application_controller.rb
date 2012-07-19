class ApplicationController < ActionController::Base
  protect_from_forgery
  require "will_paginate/array"
  require 'will_paginate'
  require 'will_paginate/active_record'  # or data_mapper/sequel
  require "carrierwave/orm/activerecord"

  def require_is_admin
    unless (current_user && current_user.is_admin?)
      redirect_to (root_path)
    end
  end
  
end
