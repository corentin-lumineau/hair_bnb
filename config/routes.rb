Rails.application.routes.draw do
 
  devise_for :users
  root to: 'pages#home'
  
  resources :hairs, only: [:index, :show, :new, :create, :destroy]do
    resources :locations, only: [:new, :create, :show]
  end
end
