class ProductsController < ApplicationController
#ArticlesController is inheriting from a special class called ApplicationController
  before_action :authenticate_user!
  def upvote
      @product = Product.find(params[:id])
      @product.upvote_by current_user
      redirect_to products_path
  end

  def downvote
    @product = Product.find(params[:id])
    @product.downvote_by current_user
    redirect_to products_path
  end

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    @user = User.find(@product.user_id)
  end

  def new
    @user = User.find(current_user.id)
  end

  def edit
    @product = Product.find(params[:id])
  end

  def create
    uploaded_file = params[:product][:product_image].path
    cloudnary_file = Cloudinary::Uploader.upload(uploaded_file)

    params[:product][:product_image] = cloudnary_file['public_id']
    @product = Product.new(products_params)

    if @product.save
      redirect_to root_path
    else
      render 'new'
    end

  end

  def update
    uploaded_file = params[:product][:product_image].path
    cloudnary_file = Cloudinary::Uploader.upload(uploaded_file)

    params[:product][:product_image] = cloudnary_file['public_id']

    @user = User.find(current_user.id)
    @product = Product.find(params[:id])
    @product.update(products_params)
    redirect_to user_path(@user.id)
  end

  def destroy
    @product = Product.find(params[:id])
    @user = User.find(current_user.id)

    @product.destroy
    redirect_to user_path(@user.id)
  end

  private
  def products_params
    params.require(:product).permit(:name, :description, :product_image, :price, :meetup_location, :availability_status, :user_id, :order_id => [])
  end
end