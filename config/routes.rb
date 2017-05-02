Rails.application.routes.draw do
  root 'welcome#home'
  get '/help', to: 'welcome#help'
  get '/change_locale/:locale', to: 'settings#change_locale', as: :change_locale

  devise_for :users

  resources :cuisines, only: [:index, :show]
  resources :recipes, except: [:index]
end
