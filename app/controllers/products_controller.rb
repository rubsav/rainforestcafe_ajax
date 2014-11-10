class ProductsController < ApplicationController
  def index
  	@products = Product.all
  end

  def show
  	@product = Product.find(params[:id])
  end

  def new
  	@product = Product.new
  end

  def edit
  	@product = Product.find(params[:id])
  end

  def create
  	@product = Product.find(product_params)
  	if @product.save
  		redirect_to products_path
  	else
  		render :new
  end

  def update = Product.find(params[:id])
  	if @product.update_attributes(product_params)
  		redirect_to @product
  	else
  		render :edit
  	end
  end

Private
  def product_params
  	params.require(:product).permit(:name, :description, :price_in_cents)

  end


end
