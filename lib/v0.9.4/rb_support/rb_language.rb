module Cucumber
  module RbSupport
    class RbLanguage
      
      def remove_all_feature_specific_step_definitions_except_for(path_to_file)
        @rejected_feature_specific_steps ||= []
        
        @rejected_feature_specific_steps.each do |step|
          @step_definitions << step
        end
        
        @rejected_feature_specific_steps.clear
        
        @step_definitions.reject! do |step|
          if step.is_feature_specific? and step.file.include? path_to_file
            return false
          else
            @rejected_feature_specific_steps << step
            return true
          end
        end
      end
      
    end
  end
end