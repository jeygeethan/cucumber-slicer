module Cucumber
  module RbSupport
    class RbStepDefinition
      def is_feature_specific?
        file =~ %r{#{CUCUMBER_FEATURE_SPECIFIC_STEPS_DIRECTORY}}
      end
    end
  end
end