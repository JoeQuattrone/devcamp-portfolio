Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :portfolios, except: [:show] do
    put :sort, on: :collection
  end
  get 'angular-items' => 'portfolios#angular'
  get 'portfolio/:id' => 'portfolios#show', as: 'portfolio_show'

  get '/about'   => 'pages#about'
  get '/contact' => 'pages#contact'

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  root 'pages#home'
end
