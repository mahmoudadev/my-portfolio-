Rails.application.routes.draw do
  devise_for :users, path: "", path_names: {sign_in: "login", sign_up: "register", sign_out: "logout"}
  resources :portfolios
  get 'home', to: "pages#home"
  get 'about', to: "pages#about"
  get 'contact', to: "pages#contact"

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  root to: "pages#home"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
