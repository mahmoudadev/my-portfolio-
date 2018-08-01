Rails.application.routes.draw do
  devise_for :users
  resources :portfolios
  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'
  resources :blogs do
    member do
      get :toggle_status
    end
  end

  root to: "pages#home"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
