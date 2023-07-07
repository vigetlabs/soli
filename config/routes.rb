Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :parts_kit, only: [:index]
  resources :posts, only: [:new, :create, :show] do
    resources :activities
  end
  root "posts#new"
end
