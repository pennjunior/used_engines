# Preview all emails at http://localhost:3000/rails/mailers/car_order_mailer
class CarOrderMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/car_order_mailer/new_order
  def new_order
    CarOrderMailer.new_order
  end

end
