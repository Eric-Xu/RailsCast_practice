RailsCastDemo::Application.routes.draw do
  resources :users
  # Episode 35 Custom REST Actions
  resources :tasks do
  	collection do
  		get 'completed'
  	end
  end
  #resources :tasks
  resources :projects

  root :to => "tasks#index"
end