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
    @order = Order.new(orders_params)
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
    params.require(:order).permit(:user_id, :product_id => [])
  end

end