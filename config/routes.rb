Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "dashboard", to: "dashboard#index"

  resources :bookings, only: [:index, :edit, :update, :show, :destroy] do
    resources :reviews, only: [:new, :create, :show]
  end

  resources :profiles, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :bookings, only: [ :new, :create ]
  end

end
