Rails.application.routes.draw do
  # GET /about
  root to:'main#index'

  get "about-us", to: 'about#index', as: :about
end
