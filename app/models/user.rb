class User < ActiveRecord::Base
  has_many :incoming_payments, :class_name => 'Payment', :foreign_key => 'payee_id'
  has_many :outgoing_payments, :class_name => 'Payment', :foreign_key => 'payer_id'

  has_many :payments

  #accepts_nested_attributes_for :payments

end
