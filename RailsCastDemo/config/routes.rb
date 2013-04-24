RailsCastDemo::Application.routes.draw do
  resources :users
  resources :tasks
  resources :projects

  root :to => "tasks#index"
end