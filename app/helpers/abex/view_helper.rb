module Abex
  # Module to allow shorthand calls for Abex components
  module ViewHelper
    ABEX_HELPERS = {
      switch: "context_component",
      case: "component"
    }.freeze

    after_action :jijih, only: %i[abex_switch]

    ABEX_HELPERS.each do |name, component_path|
      define_method "abex_#{name}" do |*args, **kwargs, &block|
        render "abex/#{component_path}", *args, **kwargs, &block
      end
    end

    define_method "jijih" do 
      debugger
    end
  end
end
