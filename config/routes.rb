Rails.application.routes.draw do
  # GET /about
  root to:'main#index'
  get "about", to: 'about#index'

  get 'password', to: 'passwords#edit', as: :edit_password
  patch 'password', to: 'passwords#update'

  get "signup", to: 'registrations#new'
  post "signup", to: 'registrations#create'
  
  get "sign_in", to: 'sessions#new'
  post "sign_in", to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'password/reset', to: 'password_resets#new'
  post 'password/reset', to: 'password_resets#create'
  get 'password/reset/edit', to: 'password_resets#edit'
  patch 'password/reset/edit', to: 'password_resets#update'

  get '/auth/twitter/callback', to: 'omniauth_callbacks#twitter'

end
