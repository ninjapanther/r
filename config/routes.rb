Rails.application.routes.draw do
  resources :serverdetails
  root "serverdetails#index"
  namespace :api, defaults: {format: :json} do
    namespace :v1 do
	   
      resources :serverdetails, only: [:index, :create, :show, :update, :destroy]
     # resources :microposts, only: [:index, :create, :show, :update, :destroy]
	 
    end
  end
  
   # mount API::Base, at: "/"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
