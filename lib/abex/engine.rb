require "rails/engine"
module Abex
  class Engine < ::Rails::Engine
    isolate_namespace Abex

    ActiveSupport.on_load(:action_controller_base) do
      require "abex/view_helper"
      helper Abex::ViewHelper
    end
  end
end
