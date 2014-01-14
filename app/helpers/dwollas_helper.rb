module DwollasHelper

  def escape_string(string)
    CGI::escape(string)
  end

  def payment_url
    escape_string("https://www.dwolla.com/oauth/v2/authenticate?client_id=#{DWOLLA_KEY}&response_type=code&redirect_uri=http://localhost:3000/dwollas/create&scope=balance")
  end
end
