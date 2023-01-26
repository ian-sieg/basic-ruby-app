Rails.application.routes.draw do
  # GET /about
  root to:'main#index'

  get "signup", to: 'registrations#new'
  post "signup", to: 'registrations#create'

  get "about-us", to: 'about#index', as: :about
end
