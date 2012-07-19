class ProductsController < ApplicationController  



  def index
    if request.query_string.present?
      @products = Product.get_country(params[:country_id]).available.paginate(:page => params[:page], :per_page => 10)
    else
      @products = Product.available.paginate(:page => params[:page], :per_page => 10)
    end
  end

  def show
    @product = Product.find(params[:id])
    @photos = @product.photos.all
  end

  
end
