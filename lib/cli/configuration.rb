module Cucumber
  module Cli
    class Configuration
      
      def step_defs_to_load
        all_files_to_load.reject {|f| f =~ %r{/support/} || f =~ %r{/specific_feature_step_definitions/}}
      end
      
    end
  end
end