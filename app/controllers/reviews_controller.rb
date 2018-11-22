class ReviewsController < ApplicationController
#ArticlesController is inheriting from a special class called ApplicationController
  def index
  end

  def show
  end

  def new
    @order = Order.find(params[:order_id])
  end

  def edit
  end

  def create
    @review = Review.new(reviews_params)
    @review.save
    if @review.save
      redirect_to products_path
    else
      render 'new'
    end
  end

  def update
  end

  def destroy
  end

  private
  def reviews_params
    params.require(:review).permit(:content, :order_id)
  end
end