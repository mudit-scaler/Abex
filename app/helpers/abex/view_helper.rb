module Abex
  # Module to allow shorthand calls for Abex components
  module ViewHelper
    ABEX_HELPERS = {
      switch: "context_component",
      case: "component"
    }.freeze

    
    define_method "abex_switch" do |*args, **kwargs, &block|
      render "abex/context_component", *args, **kwargs, &block
    end

    define_method "abex_case" do |*args, **kwargs, &block|
      render "abex/component", *args, **kwargs, &block
    end

    define_method "abex_switch_stack" do |*args, **kwargs, &block|
      debugger
    end
  end
end
