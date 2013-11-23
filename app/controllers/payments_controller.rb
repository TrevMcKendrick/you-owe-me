class PaymentsController < ApplicationController
  
  def create
    
    @payment = Payment.create(payment_params)
    
    # payment.payer = params[payer]
    # payment.payee = params[]

    # payee = User.new
    # payer = User.new

    #create a new payment
    #find or create payee, add to payment
    #find or create payer, add to Payment
  end

  def new
  end

  private

  def payment_params
      binding.pry
      params.require(:payment).permit(:email, :transfer_amount, :description, :phone)
    end
end
