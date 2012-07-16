class Admin::ProductsController < ApplicationController  

  before_filter :require_is_admin

  layout "admin"

  def index
    @products = Product.all.paginate(:page => params[:page], :per_page => 10)
  end

  def new
    @product = Product.new
  end

  def edit
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(params[:product])

    if @product.save
      redirect_to(@product)
    else
      render :action => :new
    end
  end

  def update
    @product = Product.find(params[:id])

    if @product.update_attributes(params[:product])
      redirect_to(@product)
    else
      render :action => :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to(admin_products_url)
  end

end