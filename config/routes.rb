Rails.application.routes.draw do  
  
  
  
  
  devise_for :users
  resources :users, only: [:index] do 
    collection do
      get :profile
      get :profile_setting
      put :update
    end
  end
  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'dashboard#index'
  get '/dashboard', to: 'dashboard#index'

  resources :products do 
  	resources :comments
  end
  resources :salons

end
