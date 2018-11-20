class CartController < ApplicationController
#ArticlesController is inheriting from a special class called ApplicationController
  def show
      @sessionData = user_session["product"]
      puts 'type of session data'
      puts @sessionData.is_a?(Array)
      if @sessionData.nil?
        render 'show_without_item'
      else
        user_session["product"].each do |us|
          @productSession ||= []
          @productSession = @productSession << Product.find(us)
        end
      end
  end

end