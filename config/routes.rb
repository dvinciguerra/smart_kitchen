# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :users do
    resources :settings
  end

  resources :ingredients
  resources :recipes
  resources :users

  root 'recipes#index'
end
