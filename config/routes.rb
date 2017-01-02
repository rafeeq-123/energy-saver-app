Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" } 
  root 'savers#welcome'
	resources :savers,only:[:index,:create,:new, :show]
	get 'savers', to: 'savers#about'
end
