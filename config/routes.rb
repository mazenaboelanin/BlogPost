Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "posts#index"

  # Regular Route
  get 'about' => 'pages#about'

  # Resource Route 
  resources :posts
end
