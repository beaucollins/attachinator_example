# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_AttachmentApp_session',
  :secret      => '97c84b5f8a132fd9d67d70ba2a9d2e5a419962e62f2ca24376e0a4964fe2873bf42351d11af2559525ebbf3dbd929390bfc098392931db836de5e98b9c55d224'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
