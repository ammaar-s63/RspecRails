# frozen_string_literal: true

Rails.application.routes.draw do
  root 'welcome#home'

  get 'signup', to: 'users#new'
  get 'about', to: 'welcome#about'

  resources :sessions, only: %i[new create destroy]
  resources :articles
  resources :users, except: [:new]
end
