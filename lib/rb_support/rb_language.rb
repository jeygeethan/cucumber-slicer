module Cucumber
  module RbSupport
    class RbLanguage
      
      def register_rb_step_definition(regexp, proc)
        if @feature_specific_code_file_loading == true
          step_definition = RbStepDefinition.new(self, regexp, proc, true)
        else
          step_definition = RbStepDefinition.new(self, regexp, proc)
        end
        
        @step_definitions << step_definition
        step_definition
      end
      
      def remove_all_feature_specific_step_definitions
        @step_definitions.reject! do |step|
          step.is_feature_specific?
        end
      end
      
      def load_code_file(code_file)
        require File.expand_path(code_file) # This will cause self.add_step_definition, self.add_hook, and self.add_transform to be called from RbDsl
      end
      
      def load_code_file_specific_for_feature(code_file)
        @feature_specific_code_file_loading = true
        load_code_file(code_file)
        @feature_specific_code_file_loading = false
      end
    end
  end
end