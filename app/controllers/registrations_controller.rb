class RegistrationsController < Devise::RegistrationsController

  def create
    super

    # puts "PATH: #{params[:user][:profile_image].path}"
    # puts "RESOURCE: #{resource}"

    # byebug
    uploaded_file = params[:user][:profile_image].path
    cloudnary_file = Cloudinary::Uploader.upload(uploaded_file)
    # app/controllers/users/resgistrations_controller
    #
    # params[:user][:profile_image] = cloudnary_file['public_id']

    resource.update_attributes(profile_image: cloudnary_file['public_id'])
  end

  private

  def sign_up_params
    params.require(:user).permit(:name, :contact_number, :email, :password, :password_confirmation, :profile_image)
  end

  def account_update_params
    params.require(:user).permit(:name, :contact_number, :email, :password, :password_confirmation, :current_password, :profile_image)
  end
end