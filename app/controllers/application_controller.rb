class ApplicationController < ActionController::Base
  before_action :devise_parameter, if: :devise_controller?
     
  private
  def devise_parameter
    devise_parameter_sanitizer.permit(:sign_uo, keys: [:nickname])
  end
end
