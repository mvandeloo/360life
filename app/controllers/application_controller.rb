class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

layout Proc.new { |controller| controller.request.xhr? ? false : 'application' }

def configure_permitted_paramaters
devise_parameter_sanitizer.for(:sign_up) << :name
end

end
