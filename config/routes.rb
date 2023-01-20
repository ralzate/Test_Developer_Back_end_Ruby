# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root to: 'searches#index'
  resources :searches, except: %i[new destroy]
  post 'mark_joke_as_favorite', to: 'my_favorites#mark_joke_as_favorite'
end
