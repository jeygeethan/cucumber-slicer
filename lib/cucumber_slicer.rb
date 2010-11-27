if RAILS_ENV != "development" and RAILS_ENV != "production"
  require "step_mother"
  require "cli/configuration"
  require "rb_support/rb_language"
  require "rb_support/rb_step_definition"
  require "ast/tree_walker"
end