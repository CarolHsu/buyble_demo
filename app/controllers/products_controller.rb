class ProductsController < ApplicationController  



  def index
    if params[:country_id].present?
      @products = Product.get_country(params[:country_id]).paginate(:page => params[:page], :per_page => 10)
    elsif params[:discount].present?
      @products = Product.find_by_sql("select * from products order by discount limit 1").paginate(:page => params[:page], :per_page => 10)
    else
      @products = Product.available.paginate(:page => params[:page], :per_page => 10)
    end
  end

  def show
    @product = Product.find(params[:id])
    @photos = @product.photos.all
  end

  
end
