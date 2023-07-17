Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  resources :users, only: [:show]
  resources :parts_kit, only: [:index]
  resources :guides, only: [:new, :create, :show, :update, :index] do
    member do
      get :add_tags
    end
    resources :activities
  end
  root "welcome#index"
end
