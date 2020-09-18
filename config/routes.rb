Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :pets, only:[:index, :show, :new, :create] do
    resource :matchings, only: [:create]
  end
  resources :matchings, only: [:index, :edit, :update]
  namespace :owner do
    resources :matchings, only: [:index]
  end
end
