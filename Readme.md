# OmniAuth Deezer Test

Sample Rails application that use the Omniauth Deezer GEM.
https://github.com/geoffroymontel/omniauth-deezer

## Usage

Create an app on Deezer website and save your app id and app secret in DEEZER_APP_ID and DEEZER_APP_SECRET environment variables. The domain should be localhost.

Then run 

````bash
bundle install
rails s
````

And point your browser to localhost:3000

Enjoy.

## Known bugs

Like omniauth-facebook, if you get the following error when redirected back from Deezer :

````bash
OpenSSL::SSL::SSLError (SSL_connect returned=1 errno=0 state=SSLv3 read server certificate B: certificate verify failed)
````

You need to point your app to your SSL certificates directory in `config/initializers/omniauth.rb` :

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :deezer, ENV['DEEZER_APP_ID'], ENV['DEEZER_APP_SECRET'], :perms => 'basic_access,email', :client_options => {:ssl => {:ca_path => '/etc/ssl/certs'}}
end
