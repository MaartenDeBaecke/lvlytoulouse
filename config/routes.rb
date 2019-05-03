Rails.application.routes.draw do
  devise_for :users
  resources :foods
  get 'foodd', to: 'pages#food'
  get 'toys', to: 'pages#toys'
  get 'handy_stuff', to: 'pages#handy_stuff'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#home'
end
