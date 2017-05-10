Rails.application.routes.draw do
  resources :guests, only: [:index, :show]
  resources :episodes, only: [:index, :show]
  resources :appearances, only: [:new, :create, :edit, :update]

    get '/login', to: 'sessions#new', as: 'login'
    post '/sessions', to: 'sessions#create', as: 'sessions'

end
