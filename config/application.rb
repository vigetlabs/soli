require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Soli
  class Application < Rails::Application
    config.application_name = Rails.application.class.module_parent_name
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
    config.tag_options = { 'Eat': 1, 'Entertain': 2, 'Relax': 3, 'Shop': 4, 'Learn': 5, 'Create': 6, 'Exercise': 7, 'Outdoor': 8, 'Free': 9 }
    id_prepend = "hidden "
    config.tag_ids = { 1 => id_prepend + "peer/1", 
      2 => id_prepend + "peer/2", 
      3 => id_prepend + "peer/3", 
      4 => id_prepend + "peer/4", 
      5 => id_prepend + "peer/5", 
      6 => id_prepend + "peer/6", 
      7 => id_prepend + "peer/7", 
      8 => id_prepend + "peer/8", 
      9 => id_prepend + "peer/9" }
    style_prepend = "items-center px-2 py-1 text-sm font-bold border rounded-full select-none text-form-primary border-form-primary "
    config.tag_colors = { 1 => style_prepend + "peer-checked/1:bg-golden-primary", 
      2 => style_prepend + "peer-checked/2:bg-violet-primary", 
      3 => style_prepend + "peer-checked/3:bg-violet-light-active", 
      4 => style_prepend + "peer-checked/4:bg-golden-light-active", 
      5 => style_prepend + "peer-checked/5:bg-limon-active", 
      6 => style_prepend + "peer-checked/6:bg-limon-primary", 
      7 => style_prepend + "peer-checked/7:bg-periwinkle-light-active", 
      8 => style_prepend + "peer-checked/8:bg-periwinkle-light-hover", 
      9 => style_prepend + "peer-checked/9:bg-form-secondary" }
    config.durations = {"Duration" => [0], "< 1 hour" => [0, 60], "1-3 hours" => [60, 180], "3-5 hours" => [180, 300], "> 5 hours" => [300] }
  end
end
