class Payment < ActiveRecord::Base

  belongs_to :payee, :class_name => 'User', :foreign_key => 'payee_id'
  belongs_to :payer, :class_name => 'User', :foreign_key => 'payer_id'

  monetize :amount , :as => "transfer_amount"
  
end
