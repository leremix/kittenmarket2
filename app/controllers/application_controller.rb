class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :sanitize_devise_params, if: :devise_controller?

  def sanitize_devise_params
    devise_parameter_sanitizer.permit(:sign_up) { |user| user.permit(
    :username,
    :email,
    :password,
    :password_confirmation,
    :order_id
    ) }
  end
end
