module Abex
  # Module to allow shorthand calls for Abex components
  module ViewHelper
  
    class << self
      def abex_switch(flag_key:, variant:)
        render "abex/context_component", flag_key: flag_key, variant: variant
      end
  
      def abex_case(variant:)
        render "abex/component", variant: variant
      end
    end
  end
end
