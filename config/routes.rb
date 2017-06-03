Rails.application.routes.draw do
  resources :assignments
  get 'home/index'

  get 'tasks/calculatedayassign'

  resources :tasks
  resources :forms
  devise_for :users
  resources :documents

 authenticated :user, ->(u) { u.has_role?(:admin) } do
  root to: "home#index", as: :manager_root
end

authenticated :user, ->(u) { u.has_role?(:staffhep) } do
  root to: "dashboard#index", as: :employee_root
end

root to: 'documents#index'

end
