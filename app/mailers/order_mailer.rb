class OrderMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.new_order.subject
  #
  def new_order(product, currentUserId)
    @product = product
    @user = User.find(currentUserId)

    mail to: @user.email,
         subject: "Email confirmation for orders"
  end
end
