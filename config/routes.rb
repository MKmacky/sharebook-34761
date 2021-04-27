Rails.application.routes.draw do
  devise_for :users
  get 'books/index'
  root to: "books#index"
  resources :users, only: :show
  resources :books do
    resources :comments, only: :create
  end
end
