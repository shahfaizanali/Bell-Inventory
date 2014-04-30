Foodfast::Application.routes.draw do
  resources :recievers

  resources :imeis
  resources :phones
  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end