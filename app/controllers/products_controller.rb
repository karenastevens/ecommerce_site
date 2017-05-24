class ProductsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]

  def index
    @products = Product.paginate(page: params[:page])
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:success] = "Product created!"
      redirect_to products_path
    else
      render 'static_pages/home'
    end
  end

  def show 
    @product = Product.all
  end

  def destroy
    Product.find(params[:id]).destroy
    flash[:success] = "Product deleted"
    redirect_to products_path
  end

  private

    def product_params
      params.require(:product).permit(:name, :price, :description)
    end
end
