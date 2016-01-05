Rails.application.routes.draw do

  resources :categories
  devise_for :users
  
  resources :articles do
    resources :comments, only: [:create, :destroy, :update, :show]
  end

  root 'articles#index'

  get "/dashboard", to: "bienvenido#dashboard"

  put "/articles/:id/publish", to: "articles#publish"

end
