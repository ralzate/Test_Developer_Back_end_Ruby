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
    config.secret_key_base = 'bd9f35adc889479a6142f34c0e40f2f5f779d3c8ff30ae535761957ba331cc68d6dcf695ee110535bbd7b7677221b35b17427730b4a5331b52935cfb8e209d14'
  end
end
