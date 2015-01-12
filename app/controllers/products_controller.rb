class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to @product, notice: "Produto foi criado."
    else
      flash[:alert] = "Produto não pode ser criado."
      render "new"
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit

  end

  private
    def product_params
      params.require(:product).permit(:name, :description)
    end
end
