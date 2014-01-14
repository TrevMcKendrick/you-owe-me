Rails.application.config.middleware.use OmniAuth::Builder do
  provider :dwolla, 
  DWOLLA_KEY, 
  DWOLLA_SECRET, 
  :scope => 'accountinfofull|send|request', 
  :provider_ignores_state => true
end