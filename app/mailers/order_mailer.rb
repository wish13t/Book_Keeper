class OrderMailer < ApplicationMailer
  default from: 'Wish3T <bookkeeper@example.com>' 
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.recieved.subject
  #
  def recieved(order)
    @order = order

    mail to: order.email, subject: "BookKeeper Online Store - Order Confirmation "
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.shipped.subject
  #
  def shipped(order)
    @order = order

    mail to: order.email, subject: "BookKeeper Online Store - Order Shipped "
  end
end
