Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" } 
  get "savers/about" 
  root "savers#welcome"
	resources :savers
end
