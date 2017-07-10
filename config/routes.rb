Rails.application.routes.draw do
  resources :assignments
  get 'dashboardstaff/index'
  get 'dashboardstaff/homestaff'
  get 'dashboardstaff/create'
  get 'dashboardstaff/dotask'
  resources :document_tasks

  
  get 'home/index'

  get 'tasks/calculatedayassign'
  get 'documents/moreinfodoc'
  get 'documents/trackdoc'

  resources :tasks 
  resources :forms
  devise_for :users
  resources :documents


  devise_scope :user do
    authenticated :user, ->(u) { u.has_role?(:admin) } do
      root to: "home#index", as: :manager_root
    end

    authenticated :user, ->(u) { u.has_role?(:staffhep) } do
      root to: "dashboardstaff#homestaff", as: :employee_root
    end
     authenticated :user do
      root to: 'documents#index'
    end

    unauthenticated do
      root to: 'devise/sessions#new', as: 'unauthenticated_root'
    end

  end 


end
