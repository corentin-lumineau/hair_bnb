Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :hairs, only: [:index, :show, :new, :create, :destroy] do
    resources :locations, [:show, :new, :create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
