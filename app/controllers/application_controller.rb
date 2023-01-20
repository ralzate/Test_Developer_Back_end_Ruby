# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, alert: exception.message
  end

  def set_locale
    I18n.locale = :es if params.key?(:es)
  end
end
