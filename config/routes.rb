Rails.application.routes.draw do
  resources :tasks
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "tasks#index"

  get '/change_status/:id', to: 'tasks#change_status'
end
