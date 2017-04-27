Rails.application.routes.draw do
  root 'welcome#home'
  get '/about', to: 'welcome#about'
  get '/change_locale/:locale', to: 'settings#change_locale', as: :change_locale

  devise_for :users

  resources :master, only: [:index]

  resources :cuisines, only: [:index, :show]
  resources :recipes, except: [:index]
end
