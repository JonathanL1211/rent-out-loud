class CartController < ApplicationController
#ArticlesController is inheriting from a special class called ApplicationController
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

  def show
      @sessionData = user_session["product"]
      puts 'type of session data'
      puts @sessionData.is_a?(Array)
      puts @sessionData
      if @sessionData.nil?
        render 'show_without_item'
      else
        @sessionData.each do |us|
          @productSession ||= []
          @prod = Product.find(us)
          @productSession = @productSession << @prod
        end
      end
  end

end