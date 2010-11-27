module Cucumber
  module RbSupport
    class RbStepDefinition
      
      def initialize(rb_language, regexp, proc, is_feature_specific = false)
        raise MissingProc if proc.nil?
        if String === regexp
          p = Regexp.escape(regexp)
          p = p.gsub(/\\\$\w+/, '(.*)') # Replace $var with (.*)
          regexp = Regexp.new("^#{p}$") 
        end
        @rb_language, @regexp, @proc = rb_language, regexp, proc
        @rb_language.available_step_definition(regexp_source, file_colon_line)
        @is_feature_specific = is_feature_specific
      end
      
      def is_feature_specific?
        @is_feature_specific
      end
    end
  end
end