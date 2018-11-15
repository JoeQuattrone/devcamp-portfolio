Rails.application.routes.draw do
  devise_for :users
  resources :portfolios, except: [:show]
  get 'angular-items' => 'portfolios#angular'
  get 'portfolio/:id' => 'portfolios#show', as: 'portfolio_show'

  get '/about'   => 'pages#about'
  get '/contact' => 'pages#contact'

  resources :blogs do
    member do
      get :toggle_status
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#home'
end
