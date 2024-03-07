Rails.application.routes.draw do
  root "welcome#index"

  resources :users, only: [:new, :create]

  resources :sessions, only: [:new, :create]
  delete '/logout', to: 'sessions#destroy', as: 'logout'
  
  namespace :admin do
    get "/dashboard", to: "dashboard#index"
  end

  resources :articles do
    resources :comments
  end
end
