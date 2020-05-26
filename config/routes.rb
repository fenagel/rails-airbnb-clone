Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "pages#home"
  resources :cars
  resources :rentals, only: [:create] do
    resources :reviews, only: [:create]
  end
  patch '/rentals/:id/confirm', to: 'pages#confirm', as: 'confirm'
  patch '/rentals/:id/decline', to: 'pages#decline', as: 'decline'
end
