class ProductsController < ApplicationController
  before_action :authenticate_user!
  # before_action :set_commentable
  
  def index
  	@products = Product.order(created_at: :desc ).paginate(page: params[:page], per_page: 2)
  end

  def new
  	@product = Product.new
  end

  def create
    @product = current_user.products.build(product_params)
    if @product.save
      redirect_to products_path, notice:"The Product #{@product.name} has been created"
    else
      render :new
    end
  end
  
  def show
    @product = Product.find(params[:id])
    @commentable = @product
    @comments = @commentable.comments
    @comment = Comment.new
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(product_params)
      flash[:notice] = "Product #{@product.name} Updated"
      redirect_to products_path
    else
      flash[:error] = "Failed to update product"
      render :edit
    end
  end  

  def destroy
    @product = Product.find(params[:id])
    if @product.delete
      flash[:notice] = "#{@product.name} Product has been deleted"
      redirect_to products_path
    else
      flas[:error] = "Failed to delete"
      render :destroy
    end
  end

  private

  def product_params
    params.require(:product).permit(:name,:image,:short_description,:description,:price,:quantity)
  end
  # def set_commentable
  #   @commentable = Product.find(params[:id])
  # end

end
