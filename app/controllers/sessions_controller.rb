class SessionsController < ApplicationController
  def index
    @product = Product.find(params[:product_id])
    user_session["product"] ||= []
    user_session["product"] = user_session["product"] << @product
    puts 'Here is the user_sessioN product: '
    puts user_session["product"]
    puts 'Here is the session itself:'
    puts user_session
    redirect_to root_path
  end
end