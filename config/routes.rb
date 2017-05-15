Rails.application.routes.draw do
  resources :tasks
  resources :forms
  devise_for :users
  resources :documents
  root 'dashboard#index'

end
