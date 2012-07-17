class PhotosController < ApplicationController

  before_filter :fond_product

  def index
    redirect_to(product_posts_path(@product))
  end

  def show
    @photo = @product.photos.find(params[:id])
  end

  protected

    def find_product
      @product = Product.find(params[:product_id])
    end

end
