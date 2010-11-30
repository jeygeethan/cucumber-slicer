module Cucumber
  module Cli
    class Configuration
      
      def step_defs_to_load
        all_files_to_load.reject {|f| f =~ %r{/support/} || f =~ %r{#{CUCUMBER_FEATURE_SPECIFIC_STEPS_DIRECTORY}}}
      end
      
    end
  end
end