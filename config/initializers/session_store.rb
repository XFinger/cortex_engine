# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_cortex_base_session',
  :secret      => 'd7ebb81bffec7eea6152706230a6bce355ed9117c444f7f4c3bf1ab71d654abe6c98ece1574783eafc5d09453e25deecd6d2a396b6738650dc908f08e192758e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
