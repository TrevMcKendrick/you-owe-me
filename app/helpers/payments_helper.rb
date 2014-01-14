
module PaymentsHelper

  def link_to_pay
    link_to "here", { :controller => :dwollas, :action => :show , :method => :post, :email => "#{escape_string(@payer.email)}", :only_path => false }
  end

  def escape_string(string)
    CGI::escape(string)
  end

end