class OrderMailer < ApplicationMailer
  default from: ENV["EMAIL_USERNAME"]

  def new_order(order)
    @order = order
    mail(to: ENV["EMAIL_USERNAME"], subject: "New Engine Order Inquiry")
  end
end
