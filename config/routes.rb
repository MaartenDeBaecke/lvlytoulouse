Rails.application.routes.draw do
  resources :handy_stuffs
  resources :toys
  devise_for :users
  resources :foods
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#home'
end
