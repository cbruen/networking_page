
Rails.application.config.middleware.use OmniAuth::Builder do
	provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET'],
	:client_options => {:ssl => {:ca_file => '/etc/pki/tls/certs/ca-bundle.crt'}}
end