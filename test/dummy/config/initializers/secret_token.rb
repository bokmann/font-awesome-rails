# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
#
# avoid deprecation warnings if building against older versions of Rails

# secret_token migrated to secret_key_base in Rails 4
SKB_VERSION = Gem::Version.new('4.0.0')

# Get the current Rails version.
RAILS_VERSION = Rails.respond_to?(:version) ? Gem::Version.new(Rails.version) : Gem::Version.new('3.22')

# if we're running an old version of Rails
if RAILS_VERSION < SKB_VERSION 
  Dummy::Application.config.secret_token    = 'deadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeef'
else
  Dummy::Application.config.secret_key_base = 'deadbeef' if Dummy::Application.config.respond_to?(:secret_key_base)
end 

