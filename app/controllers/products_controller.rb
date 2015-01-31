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
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to @product, notice: 'Produto foi editado.'
    else
      flash[:alert] = 'Produto não foi alterado, verifique os erros.'
      render :edit
    end
  end

  private
    def product_params
      params.require(:product).permit(:name, :description)
    end
end
