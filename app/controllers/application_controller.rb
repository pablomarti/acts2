class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  layout :layout
  
  before_action :configure_permitted_parameters, if: :devise_controller?
  after_action :store_location

  def store_location
    session[:previous_url] = request.fullpath unless request.fullpath =~ /\/users/ && request.fullpath =~ /\/church_members/ && request.fullpath =~ /\/management/
  end

  def after_sign_in_path_for(resource)
    if resource.kind_of? User
      "/management"
    else
      session[:previous_url] || root_path
    end
  end
  
  def after_sign_out_path_for(resource_or_scope)
    if resource.kind_of? User
      "/management"
    else
      session[:previous_url] || root_path
    end
  end

  private

  	def layout
  		if devise_controller? && devise_mapping.name == :user
	      "management"
	    else
	      "application"
	    end
  	end

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:password, :password_confirmation,:current_password,:email,:first_name, :last_name, :birth_date, :church_campus_id, :phone1, :phone2, :phone3, :cdj_area, :country, :genre, :address) }
    end
end
