class OrdersController < ApplicationController
#ArticlesController is inheriting from a special class called ApplicationController
  def index
  end

  def show
  end

  def new

  end

  def edit
  end

  def create
    @product = Product.find()
    @order = Order.new(orders_params)
    @order.rental_days = (@order.end_date - @order.meetup_date).to_i
    @order.individual_cost = (@order.rental_days / 7) *
    @order.save
    if @order.save
      redirect_to root_path
    else
      render plain: 'This is not a create page'
    end
  end

  def update
  end

  def destroy
  end

  private
  def orders_params
    params.require(:order).permit(:user_id, :rental_days, :meetup_date, :end_date, :individual_cost, :product_id => [])
  end

end