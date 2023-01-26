Rails.application.routes.draw do
  # GET /about
  root to:'main#index'

  get 'password', to: 'passwords#edit', as: :edit_password
  patch 'password', to: 'passwords#update'

  get "signup", to: 'registrations#new'
  post "signup", to: 'registrations#create'
  
  get "sign_in", to: 'sessions#new'
  post "sign_in", to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get "about", to: 'about#index'
end
