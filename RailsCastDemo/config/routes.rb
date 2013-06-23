RailsCastDemo::Application.routes.draw do
  resources :users
  resources :projects
  resources :sessions

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