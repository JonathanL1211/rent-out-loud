class CartController < ApplicationController
#ArticlesController is inheriting from a special class called ApplicationController
  def show
      @sessionData = user_session["product"]
      user_session["product"].each do |us|
        @productSession ||= []
        @productSession = @productSession << Product.find(us)
      end
  end

end