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

    def fetch_chosen_variant(abex_features)
      return nil unless abex_features.present?

      abex_switch_stack = abex_features.progress
      experiment_key = abex_switch_stack.peek
      return nil unless experiment_key.present?

      abex_features.dig(experiment_key)
    end
  end
end
