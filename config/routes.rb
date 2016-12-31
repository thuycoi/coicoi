Rails.application.routes.draw do
  get 'sessions/new'
  get 'signup' => 'users#new', :as =>'signup'
  get 'login' => 'sessions#new', :as =>'login'
  get 'logout' => 'sessions#delete', :as => 'logout'

  resources :favourites

  resources :users
  resources :wordclasses
  resources :languages
  resources :words do
    resources :comments
  end
  resources :searches
  root 'words#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
