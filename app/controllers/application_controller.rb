class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  layout Proc.new { |controller| controller.request.xhr? ? false : 'application' }

  def configure_permitted_paramaters
    devise_parameter_sanitizer.for(:sign_up) << :name
  end

  # Devise: Where to redirect users once they have logged in
  def after_sign_in_path_for(user)
  	wheel = Wheel.find(session[:wheel_id])
  	wheel.update_attribute(:user_id,user.id)
    goals_path
  end

end
