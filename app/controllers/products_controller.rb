class ProductsController < ApplicationController
#ArticlesController is inheriting from a special class called ApplicationController
  before_action :authenticate_user!
  def index
  end

  def show
  end

  def new
    @user = User.find(current_user.id)
  end

  def edit
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
  end

  def destroy
  end

  private
  def products_params
    params.require(:product).permit(:name, :description, :product_image, :price, :rental_days, :meetup_date, :meetup_location, :availability_status, :user_id)
  end
end