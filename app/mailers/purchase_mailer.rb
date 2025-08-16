class PurchaseMailer < ApplicationMailer
  default from: ENV["EMAIL_USERNAME"]  # change this to your domain

  # Confirmation email to the buyer
  def confirmation_email(purchase)
    @purchase = purchase
    mail(to: @purchase.email, subject: "Your Purchase Confirmation")
  end

  # Notification email to admin
  def admin_notification(purchase)
    @purchase = purchase
    mail(to: ENV["EMAIL_USERNAME"], subject: "New Purchase Received")
  end
end
