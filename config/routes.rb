Rails.application.routes.draw do
  root 'welcome#home'
  get '/change_locale/:locale', to: 'settings#change_locale', as: :change_locale
  get '/contact', to: 'help#contact', as: :contact
  get '/help', to: 'help#index'
  
  devise_for :users

  resources :cuisines, only: [:index, :show]
  resources :recipes, except: [:index]
end
