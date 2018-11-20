class CartController < ApplicationController
#ArticlesController is inheriting from a special class called ApplicationController
  def show
      @sessionData = user_session["product"]
      puts 'type of session data'
      puts @sessionData.is_a?(Array)
      if @sessionData.nil?
        render 'show_without_item'
      else
        @sessionData.each do |us|
          @productSession ||= []
          @prod = Product.find(us)
          @user = User.find(@prod.user_id)
          @productSession = @productSession << @prod
        end
      end
  end

end