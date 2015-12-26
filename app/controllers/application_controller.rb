class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:password, :password_confirmation,:current_password,:email,:first_name, :last_name, :birth_date, :church_campus_id, :phone1, :phone2, :phone3, :cdj_area, :country, :genre, :address) }
    end
end
