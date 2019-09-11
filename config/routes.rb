# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'callbacks' }
  resources :repositories
  root 'welcome#index'
  get 'juniors', to: 'developers#index'
  get 'projects', to: 'projects#index'

  resources :projects
end
