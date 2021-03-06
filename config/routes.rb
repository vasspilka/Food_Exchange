FoodExchange::Application.routes.draw do

  resources :donations

  root :to => "home#index"

  match '/home',    to: 'static_pages#home' ,   via: 'get'
  match '/about',   to: 'static_pages#about' ,  via: 'get'
  match '/help',    to: 'static_pages#help', via: 'get'

  devise_for :users, :controllers => {registrations: "registrations", omniauth_callbacks: "omniauth_callbacks"}

  resources :items, :users, :donations

  resources :claims, only: [:create, :destroy]
end