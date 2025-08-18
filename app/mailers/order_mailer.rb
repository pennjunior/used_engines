class OrderMailer < ApplicationMailer
  default from: ENV["EMAIL_USERNAME"]

  def customer_mailing(order)
    @order = order
    mail(to: @order.email, subject: "Your Purchase Confirmation")
  end

  def new_order(order)
    @order = order
    mail(to: ENV["EMAIL_USERNAME"], subject: "New Engine Order Inquiry")
  end
end
