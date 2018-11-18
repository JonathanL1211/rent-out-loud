class UsersController < ApplicationController
#ArticlesController is inheriting from a special class called ApplicationController
  before_action :authenticate_user!
  def create
        uploaded_file = params[:user][:profile_image].path
        cloudnary_file = Cloudinary::Uploader.upload(uploaded_file)

        params[:user][:profile_image] = cloudnary_file['public_id']
  end

  def show
    if current_user
      @user = User.find(params[:id])
      @product = Product.where(user_id: params[:id])
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
  private

  def users_params
    params.require(:user).permit(:name, :contact_number, :email, :password, :password_confirmation, :profile_image)
  end
end