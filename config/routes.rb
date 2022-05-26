Rails.application.routes.draw do

  root "articles#index"

  resources :users, only: [:new, :create] 
  
  get 'login', to: 'sessions#new' 
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
  delete 'sessions', to: 'sessions#destroy'

  get 'authorized', to: 'sessions#page_requires_login'

  get "/articles/process", to:"articles#processData"
  resources :articles
#  get "/articles", to: "articles#index"
#  get "/articles/:id", to: "articles#show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
