Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :events, only: %i[show new create edit update] do
    resources :spendings, only: %i[new create index]
    resources :budgets, only: %i[new create index show]
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
