class MainController < ApplicationController
  def index
  	if !church_member_signed_in?
  		redirect_to '/church_members/sign_up'
  	end
  end
end
