class ProductsController < ApplicationController  



  def index
    if /country_id/ =~ request.query_string
      @products = Product.get_country(params[:country_id]).paginate(:page => params[:page], :per_page => 10)
    elsif /discount/ =~ request.query_string
      @products = Product.order("discount").paginate(:page => params[:page], :per_page => 10)
    else
      @products = Product.available.paginate(:page => params[:page], :per_page => 10)
    end
  end

  def show
    @product = Product.find(params[:id])
    @photos = @product.photos.all
  end

  
end
