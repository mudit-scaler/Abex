require "rails/engine"
require "view_component/engine"
module Abex
  class Engine < ::Rails::Engine
    isolate_namespace Abex

    ActiveSupport.on_load(:action_controller_base) do
      require "abex/view_helper"
      helper Abex::ViewHelper
    end
  
    config.view_component.render_monkey_patch_enabled = false
  end
end
