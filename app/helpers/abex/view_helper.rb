module Abex
  # Module to allow shorthand calls for Abex components
  module ViewHelper
    ABEX_HELPERS = {
      switch: "context_component",
      case: "component"
    }.freeze
    ABEX_HELPERS.each do |name, component_path|
      define_method "abex_#{name}" do |*args, **kwargs, &block|
        render "abex/#{component_path}", *args, **kwargs, &block
        if component_path.eql?('context_component')
          puts 'hi'
          debugger
        else
          puts 'hello'
          debugger
        end
      end
    end
  end
end
