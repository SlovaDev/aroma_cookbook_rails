Rails.application.routes.draw do
  root 'welcome#home'
  get '/change_locale/:locale', to: 'settings#change_locale', as: :change_locale
  get '/contact', to: 'help#contact', as: :contact
  devise_for :users

  resources :help, only: [:index, :show]

  resources :cuisines, only: [:index, :show]
  resources :recipes, except: [:index]
end
