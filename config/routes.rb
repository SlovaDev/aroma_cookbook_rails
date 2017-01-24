Rails.application.routes.draw do
  root 'welcome#home'
  get '/contact', to: 'welcome#contact'
  get '/about', to: 'welcome#about'

  devise_for :users
  resources :cuisines, only: [:index, :show]
  resources :recipes, except: [:index]
end
