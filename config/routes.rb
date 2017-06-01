Rails.application.routes.draw do
	authenticated :user do
	  root  'cuisines#index'
	end
  root 'welcome#home'
  get '/change_locale/:locale', to: 'settings#change_locale', as: :change_locale
  get '/contact', to: 'help#contact', as: :contact
  get '/help', to: 'help#index'

  devise_for :users

  resources :cuisines, only: [:index, :show]

  resources :recipes, except: [:index] do
    resources :entries, only: [:new, :create, :destroy]
  end

  resources :calendar, only: [:index]

end
