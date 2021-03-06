Devise.setup do |config|
  config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'
  require 'devise/orm/active_record'
  config.case_insensitive_keys = [:email]
  config.strip_whitespace_keys = [:email]
  config.skip_session_storage = [:http_auth]
  config.stretches = Rails.env.test? ? 1 : 11
  config.reconfirmable = true
  config.expire_all_remember_me_on_sign_out = true
  config.password_length = 6..128
  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/
  config.reset_password_within = 6.hours
  config.sign_out_via = :delete
  config.scoped_views = true
  config.omniauth :google_oauth2,  "527195347193-6tb2fbte77qouu1tlpfdc876qq4ujsnj.apps.googleusercontent.com", "hW2hef4qSUDTrgleZ8tI7vWW", {}
  config.omniauth :instagram, "16ab60d810ab4ef0be27f7746de0074a", "f8112dfaec0d4fc9af9d1ccbe6c75dae", token_params: { parse: :json }
end
