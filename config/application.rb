require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module FYPdoctrack
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  config.middleware.use "PDFKit::Middleware", :print_media_type => true
  config.active_job.queue_name_prefix = Rails.env
  config.active_job.queue_name_delimiter = '.'
  end
end
