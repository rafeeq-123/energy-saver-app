Rails.application.routes.draw do
  devise_for :users 
	resources :savers
	 root 'savers#welcome'
end
