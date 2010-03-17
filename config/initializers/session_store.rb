# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_gruyere_session',
  :secret      => '0e1940ceb3165af4040095b6bfa5c028e78617d914d0815887bb7602359e72efc2ede4d2b5adca6bb4c2617692b259a1ae13c8e5de5fd66cdbbb74d310d268ec'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
