class OrderMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.new_order.subject
  #
  def new_order(product)
    @product = product
    @user = User.find(9)

    mail to: @user.email,
         subject: "Email confirmation for orders"
  end
end
