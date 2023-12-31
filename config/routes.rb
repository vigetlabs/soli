Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  resources :users, only: [:show, :update] do
    member do
      get :edit_profile
    end
  end
  resources :parts_kit, only: [:index]
  resources :guides, only: [:new, :create, :show, :update, :index, :destroy] do
    member do
      get :add_tags
      post :save
      get :detail
    end
    resources :activities
  end
  root "welcome#index"
end
