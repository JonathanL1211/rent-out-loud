class SessionsController < ApplicationController
  def initialize
    @emptyArray = Array.new
  end
  def index
    @product = Product.find(params[:product_id])
    @emptyArray << @product.name
    puts 'Empty'
    puts @emptyArray
    user_session["product"]
    puts 'Here is the user_sessioN product: '
    puts user_session["product"]
    puts 'Here is the session itself:'
    puts user_session
    redirect_to root_path
  end
end