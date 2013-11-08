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
    if current_user.wheel
      goals_path
    elsif session[:wheel_id]
      user.wheel_from_id(session[:wheel_id])
      session[:wheel_id] = nil
      goals_path
    else 
      new_wheel_path
    end
  end

end
