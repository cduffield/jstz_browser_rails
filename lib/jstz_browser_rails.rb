require "jstz_browser_rails/engine"
require "js_cookie_rails"
require "jstz-rails"

module JstzBrowserRails
  module TimezoneControllerSetup
    def self.included(base)
      base.send(:prepend_around_action, :set_time_zone)
    end

    private

    def set_time_zone(&action)
      Time.use_zone(Time.find_zone(browser_timezone.presence) || Time.zone, &action)
    end

    def browser_timezone
      cookies["browser.timezone"]
    end
  end

   class Railtie < Rails::Engine
     initializer "jstz_browser_rails.controller" do
       ActiveSupport.on_load(:action_controller) do
         include JstzBrowserRails::TimezoneControllerSetup
       end
     end
   end
end
