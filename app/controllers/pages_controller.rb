class PagesController < ApplicationController

  def welcome
    redirect_to(products_url)
  end
  
end
