Rails.application.routes.draw do
  resources :translations
  resources :favourites
  resources :comments
  resources :users
  resources :wordclasses
  resources :languages
  resources :words
  resources :definitions
  resources :examples
  root 'translations#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
