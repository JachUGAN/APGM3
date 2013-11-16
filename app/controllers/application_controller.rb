class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:username, :email) }	#Allows to either sign_up with the email or the username
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :role, :first_name, :last_name, :password, :password_confirmation) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username, :email, :first_name, :last_name, :password, :password_confirmation, :current_password, :rank, :city, :description) }
  end

end
