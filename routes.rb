Rails.application.routes.draw do
  get 'users/show'
  #get 'favorites/create'
  #get 'favorites/destroy'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'poketms#index'
  resources :poketms do
    resource :favorites, only: [:create, :destroy]
  end

  resources :users, :only => [:show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
