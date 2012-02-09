Rails.application.config.middleware.use OmniAuth::Builder do
  provider :deezer, ENV['DEEZER_APP_ID'], ENV['DEEZER_APP_SECRET'], :perms => 'basic_access,email'
end
