class SessionsController < ApplicationController
  def index
    @product = Product.find(params[:product_id])
    user_session["product"] ||= []
    user_session["product"] = user_session["product"] << @product.id
    puts 'Here is the user_sessioN product: '
    pp user_session["product"]
    puts 'Here is the session itself:'
    pp user_session
    pp session
    redirect_to products_path
  end
end