module Abex
  # Module to allow shorthand calls for Abex components
  module ViewHelper
  
    def abex_switch(&block, flag_key:, variant:)
      render "abex/context_component", flag_key: flag_key, variant: variant do
        capture(&block)
      end
    end

    def abex_case(variant:)
      render "abex/component", variant: variant
    end
  end
end
