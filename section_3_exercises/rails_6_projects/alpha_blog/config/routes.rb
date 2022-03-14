Rails.application.routes.draw do
  root "pages#home"
  get "about", to: "pages#about"
  # resources :articles, only: [:index, :show, :new, :create, :edit, :update, :destroy] # All the available routes on resouces
  resources :articles
  get "signup", to: "users#new"
  resources :users, exceot: [:new]
end
