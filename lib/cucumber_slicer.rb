CUCUMBER_FEATURE_SPECIFIC_STEPS_DIRECTORY = "features/step_definitions/specific_feature_step_definitions"

if RAILS_ENV == "cucumber"
  puts "Loading cucumber-slicer"
  puts ""
  
  if Gem.loaded_specs["cucumber"].version == Gem::Version.new("0.8.5")
    require "v0.8.5/step_mother"
    require "v0.8.5/cli/configuration"
    require "v0.8.5/rb_support/rb_language"
    require "v0.8.5/rb_support/rb_step_definition"
    require "v0.8.5/ast/tree_walker"
  elsif Gem.loaded_specs["cucumber"].version == Gem::Version.new("0.9.4")
    require "v0.9.2/runtime"
    require "v0.8.5/cli/configuration"
    require "v0.8.5/rb_support/rb_language"
    require "v0.8.5/rb_support/rb_step_definition"
    require "v0.8.5/ast/tree_walker"
  end
end