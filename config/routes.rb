Rails.application.routes.draw do
<<<<<<< HEAD

  devise_for :users
  root 'events#index'
  resources :events
  resources :users, only: [:show]
=======
  
  devise_for :users
  resources :users
  resources :events
  root 'events#index'
>>>>>>> 2a19edc3d9c721bf5ac1fbd353b42616d01da3f5
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
