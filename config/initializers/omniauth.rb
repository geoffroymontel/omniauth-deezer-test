Rails.application.config.middleware.use OmniAuth::Builder do
  provider :deezer, ENV['DEEZER_APP_ID'], ENV['DEEZER_APP_SECRET'], :perms => 'basic_access,email'
  # if you get a SSL error, uncomment this line and point to the folder which holds your SSL certificates
  # provider :deezer, ENV['DEEZER_APP_ID'], ENV['DEEZER_APP_SECRET'], :perms => 'basic_access,email', :client_options => {:ssl => {:ca_path => '/etc/ssl/certs'}}
end
