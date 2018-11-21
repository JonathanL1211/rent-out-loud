class HomeController < ApplicationController
  def index
    # puts user_session["product"].inspect
    @products = Product.all.order(:cached_votes_up => :desc)
  end

end