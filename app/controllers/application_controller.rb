class ApplicationController < ActionController::Base
  rescue_from CanCan::AccessDenied do |exception|
  redirect_to root_url, alert: exception.message
	end

  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
 
  protected
 
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:iduser, :username, :email, :password])
    devise_parameter_sanitizer.permit(:account_update, keys: [:iduser, :username, :email, :password, :current_password])
  end 

end
