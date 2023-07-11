Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :parts_kit, only: [:index]
  resources :guides, only: [:new, :create, :show, :edit, :update] do
    resources :activities
  end
  root "guides#new"
end
