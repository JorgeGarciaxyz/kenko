# frozen_string_literal: true

Rails.application.routes.draw do
  root "home#index"

  devise_for :users

  get "home/index"

  resources :diseases, only: [:index, :new, :create, :edit]
end
