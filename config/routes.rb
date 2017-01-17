Rails.application.routes.draw do
  devise_for :users
  root 'welcome#home'
  get '/contact', to: 'welcome#contact'
  get '/about', to: 'welcome#about'

  resources :cookbook, only: [:index]
  resources :add_recipe, only: [:index]
  resources :search_recipe, only: [:index]
end
