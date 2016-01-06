Rails.application.routes.draw do
  
  get 'main/index'

  devise_for :church_members, :controllers => {:registrations => "church_members/registrations", :sessions => "church_members/sessions", :passwords => "church_members/passwords"}
  devise_for :users, :controllers => {:sessions => "users/sessions", :passwords => "users/passwords"}

  namespace :management do
  	resources :church_members, :only => [:index]

  	get '' => 'church_members#index'
  end

  get '/church_members' => 'main#index'

  root 'main#index'

end
