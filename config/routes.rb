Rails.application.routes.draw do
  
  get 'main/index'

  devise_for :church_members, :controllers => {:registrations => "church_members/registrations", :sessions => "church_members/sessions", :passwords => "church_members/passwords"}
  devise_for :users
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'main#index'

end
