class PayerMailer < ActionMailer::Base
  helper PaymentsHelper
  
  default from: "no-reply@sandbox2071.mailgun.org"

   def invite_payer_email(payer, payee, payment)
    @payer = payer
    @payee = payee
    @payment = payment

    mail(to: @payer.email, 
         subject: 'Your friend wants their money back')
  end
end