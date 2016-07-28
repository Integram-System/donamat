class ApplicationController < ActionController::Base
  before_action :set_locale
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  private
  # set language for internationalization
  def set_locale
    I18n.locale = params[:locale] if params[:locale].present?
  end
end
