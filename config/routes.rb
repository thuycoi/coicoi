Rails.application.routes.draw do
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
