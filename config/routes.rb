Rails.application.routes.draw do

  resources :restaurants, only: [:new, :create, :show, :index] do
    resources :reviews, only: [:create, :new]
  end
  resources :reviews, only: [:destroy]

  get "up" => "rails/health#show", as: :rails_health_check

end
