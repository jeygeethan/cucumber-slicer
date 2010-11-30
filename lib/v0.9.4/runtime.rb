module Cucumber
  class Runtime
    class SupportCode
      def remove_all_feature_specific_step_definitions_except_for(path_to_file)
        programming_language = programming_language_for("test.rb")
        programming_language.remove_all_feature_specific_step_definitions_except_for(path_to_file)
      end
    end
    
    def support_code
      @support_code
    end
  end
end