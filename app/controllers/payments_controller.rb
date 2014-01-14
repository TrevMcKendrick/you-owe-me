class PaymentsController < ApplicationController
  
  def create
    
    @payee = User.find_or_create_by(payee_params)
    @payer = User.find_or_create_by(payer_params)

    @payment = @payee.incoming_payments.create(payment_params)
    @payment.update_column(:payer_id, @payer)    
    
    PayerMailer.invite_payer_email(@payer, @payee, @payment).deliver if @payment.save

  end

  def new
  end

  def send
  end

  private

  def payment_params
      params.require(:payment).permit(:transfer_amount, :description)
  end

  def payee_params
      params.require(:user).permit(:phone)
  end

  def payer_params
      params.require(:user).permit(:email)
  end

end