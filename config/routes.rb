Rails.application.routes.draw do
	root 'products#index'
	resources :products do
		resources :reviews, only: [:show, :create, :destroy]
	end
	resources :sessions, only: [:new, :create, :destroy]
	resources :users, only: [:new, :create, :destroy, :show]
end
