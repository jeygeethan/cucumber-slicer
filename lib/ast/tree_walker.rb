module Cucumber
  module Ast
    class TreeWalker
      
      def visit_feature(feature)
        feature_file_name = feature.file.gsub('\\', "/")
        feature_file_name = feature_file_name[feature_file_name.index("/")+1..-9]
        path_to_feature_specific_definition_file = "features/step_definitions/specific_feature_step_definitions/#{feature_file_name}_steps.rb"
        
        @step_mother.remove_all_feature_specific_step_definitions
        
        if File::exists?(path_to_feature_specific_definition_file)
          @step_mother.load_code_file_specific_for_feature(path_to_feature_specific_definition_file)
        end
        
        broadcast(feature) do
          feature.accept(self)
        end
      end
      
    end
  end
end