Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :events, only: %i[show new create edit update] do
    member do
      get :photos
    end
    resources :albums, only: %i[new create]
    resources :spendings, only: %i[new create index]
  end
end
