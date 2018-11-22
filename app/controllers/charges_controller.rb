class ChargesController < ApplicationController
  def create
    # Amount in cents
    @order = Order.find(params[:order_id])
    @amount = (@order.individual_cost * 100).to_i.round(2)
    @user = User.find(current_user.id)

    customer = Stripe::Customer.create(
      :email => @user.email,
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Renting of board games',
      :currency    => 'usd'
    )
    # @order.delete
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to root_path
  end
end
