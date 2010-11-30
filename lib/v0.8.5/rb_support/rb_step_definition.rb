module Cucumber
  module RbSupport
    class RbStepDefinition
      def is_feature_specific?
        file =~ /specific_feature_step_definitions/
      end
    end
  end
end