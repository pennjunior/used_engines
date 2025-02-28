class CarOrderMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.car_order_mailer.new_order.subject
  #
  def new_order(order)
    @order = order

    mail(to: ENV["EMAIL_USERNAME"],  subject: "New Car Order #{@order.car.make} #{@order.car.model} #{@order.car.year}")
  end
end
