# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_plugin_session',
  :secret      => 'c4bde7f4226e1758cb53e48c2396746f044e0eda3321e6526381fe9e455cc150fe21d4416d10003271b4f0f8ee94958f2afb65d2766001cf9bda4b102d8a009c'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
