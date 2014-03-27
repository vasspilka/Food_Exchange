FoodExchange::Application.routes.draw do
  resources :donations

  resources :items

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}

  resources :items, :users, :donations
end