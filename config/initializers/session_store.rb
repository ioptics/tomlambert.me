# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_tomlambert.me_session',
  :secret      => 'db08fb72a54a193b179bd00bd282e7c8fbba32681322ec315c89aa24940c26af16e2c5c45869283fe3d914b53641da70b697ea65f496d949992fe04e3d8f43a2'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
