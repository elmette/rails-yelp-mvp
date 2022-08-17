# frozen_string_literal: true

# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

# Defines the root path route ("/")
# root "articles#index"

Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: %i[new create]
    # collection do
    #   get :top
    # end
    # member do
    #   get :chef
    # end
  end

  resources :reviews, only: %i[show edit update destroy]
end
