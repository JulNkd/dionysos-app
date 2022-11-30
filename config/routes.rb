Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get 'profile', to: 'pages#profile'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :events, only: %i[show new create edit update] do
    resources :invitations, except: :destroy
    resources :spendings, only: %i[new create index]
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
