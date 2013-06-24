RailsCastDemo::Application.routes.draw do
  resources :users
  resources :projects
  resources :sessions, only: [:new, :create, :destroy]

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  # Episode 35 Custom REST Actions
  resources :tasks do
  	collection do
  		get 'completed'
  	end
  	member do
  		put 'complete'
  	end
  end # end Episode 35

  # Episode 42 with_options
  with_options to: "projects#index" do |path|
    path.match "test1"
    path.match "test2"
    path.match "test3"
  end # end Episode 42

  root :to => "tasks#index"
end