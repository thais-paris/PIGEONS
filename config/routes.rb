Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "pages/form", to: "pages#form"
  get "pages/search", to: "pages#search"
  resources :pigeons
  resources :bookings do
    collection do
      get :pending
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
