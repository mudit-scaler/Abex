module Abex
  # Module to allow shorthand calls for Abex components
  module ViewHelper
  
    def abex_switch(flag_key:, variant:, &block)
      render "abex/context_component", flag_key: flag_key, variant: variant do
        capture(&block)
      end
    end

    def abex_case(variant:, &block)
      render "abex/component", variant: variant do
        capture(&block)
      end
    end
  end
end
