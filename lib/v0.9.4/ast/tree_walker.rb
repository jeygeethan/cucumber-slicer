module Cucumber
  module Ast
    class TreeWalker
      
      def visit_feature(feature)
        feature_file_name = feature.file.gsub('\\', "/")
        feature_file_name = feature_file_name[feature_file_name.index("/")+1..-9]
        path_to_feature_specific_definition_file = "#{CUCUMBER_FEATURE_SPECIFIC_STEPS_DIRECTORY}/#{feature_file_name}_steps.rb"
        
        @step_mother.support_code.remove_all_feature_specific_step_definitions_except_for(path_to_feature_specific_definition_file)
        
        broadcast(feature) do
          feature.accept(self)
        end
      end
      
    end
  end
end