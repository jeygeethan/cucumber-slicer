module Cucumber
  class StepMother
    
    def load_code_file_specific_for_feature(step_def_file)
      programming_language = programming_language_for(step_def_file)
      programming_language.load_code_file_specific_for_feature(step_def_file)
    end
    
    def remove_all_feature_specific_step_definitions
      programming_language = programming_language_for("test.rb")
      programming_language.remove_all_feature_specific_step_definitions
    end
    
    def support_code
      self
    end
  end
end