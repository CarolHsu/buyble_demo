class Admin::PhotosController < ApplicationController

  layout "admin"

  before_filter :find_product

  def new
    @photo = @product.photos.build
  end

  def edit
    @photo = @product.photos.find(params[:id])
  end

  def create
    @photo = @product.photos.build(params[:photo])

    if @photo.save
      redirect_to(product_path(@product))
    else
      render :action => :new
    end
  end

  def update
    @photo = @product.photo.find(params[:id])

    if @photo.update_attributes(params[:photo])
      redirect_to(product_path(@product))
    else
      render :action => :edit
    end
  end

  def destroy
    @photo = @product.photos.find(params[:id])
    @photo.destroy

    redirect_to(product_path(@product))
  end

  protected

    def find_product
      @product = Product.find(params[:product_id])
    end

end
