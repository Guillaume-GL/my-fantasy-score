Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # resources :leagues, only: [:index, :show, :new, :create]
  # resources :users, only: [:new, :show, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
