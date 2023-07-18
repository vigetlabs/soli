Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :parts_kit, only: [:index]
  resources :guides, only: [:new, :create, :show, :update, :index] do
    member do
      get :add_tags
    end
    resources :activities
  end
  root "welcome#index"
end
