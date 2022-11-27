class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  protect_from_forgery with: :exception

  before_action :update_allowed_parameters, if: :devise_controller?

  def after_sign_out_path_for(_resource_or_scope)
    new_user_session_path
  end

  protected

  def update_allowed_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name])
  end
end
