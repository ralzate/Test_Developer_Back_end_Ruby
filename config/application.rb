# frozen_string_literal: true

require_relative 'boot'
require 'rails/all'
require "active_storage/engine"
require 'action_mailer/railtie'
require "action_cable/engine"

Bundler.require(*Rails.groups)

module Boilerplate
  class Application < Rails::Application
    config.load_defaults 6.1
    config.action_view.form_with_generates_remote_forms = true
  end
end
