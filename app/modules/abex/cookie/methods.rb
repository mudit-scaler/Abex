module Abex::Cookie::Methods
  require "active_support"
  cattr_accessor(:cookies) { ActionDispatch::Cookies::CookieJar.new({}) }

  class << self
    def set_cookie(experiment_key, value)
      experiments = fetch_experiments
      experiments[experiment_key] = value
      cookies[:abex_experiments] = {
        value: JSON.generate(experiments)
      }
    end
  
    def get_cookie_experiment_value(experiment_key)
      experiments = fetch_experiments
  
      experiments[experiment_key]
    end
  
    def delete_cookie_experiment_value(experiment_key)
      experiments = fetch_experiments
      experiments.delete(experiment_key)
      cookies[:abex_experiments] = {
        value: JSON.generate(experiments)
      }
    end
  
    def get_cookie_experiment_value_bulk(experiment_keys = [])
      experiments = fetch_experiments
      puts experiments
      puts experiments.slice(experiment_keys)

      experiments.slice(experiment_keys)
    end
  
    private
  
    def fetch_experiments
      experiments = Hash.new
      experiments = JSON.parse(cookies[:abex_experiments]) if cookies[:abex_experiments].present?
  
      experiments
    end
  end
end