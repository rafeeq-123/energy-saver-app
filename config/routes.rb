Rails.application.routes.draw do
  devise_for :users 
  root 'savers#welcome'
	resources :savers,only:[:index,:create,:new, :show]
	# get 'savers/:id' => 'savers#show', :defaults => { :format => 'json' }
end
