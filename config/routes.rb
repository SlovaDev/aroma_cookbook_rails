Rails.application.routes.draw do
  devise_for :users
  root 'welcome#home'
  get '/contact', to: 'welcome#contact'
  get '/about', to: 'welcome#about'

  resources :cuisines, only: [:index, :show] do
    resources :recipes, except: [:index]
  end
end
