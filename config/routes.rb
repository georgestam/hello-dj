Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [:new, :create, :edit, :update, :destroy] do
    resources :dashboards, only: [:show]
  end

  resources :bookings, only: [:new, :create, :show, :destroy] do
    resources :dashboards, only: [:new, :create, :show]
  end

  resources :djs, only: [:index, :show, :new, :create, :edit, :update, :destroy]
end
