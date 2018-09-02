class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  # before_action :configure_permitted_parameters, if: :devise_controller?

  helper_method :mailbox

  private 

  def mailbox 
    @mailbox ||= current_user.mailbox
  end
 
  # protected

  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.for(:sign_up) << :name
  #   devise_parameter_sanitizer.for(:account_update) << :name
  # end

end
