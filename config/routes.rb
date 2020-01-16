# frozen_string_literal: true

Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/author_admin', as: 'rails_admin'
  devise_for :admins, controllers: {
    sessions: 'admins/sessions'
  }

  devise_for :authors, controllers: {
    sessions: 'authors/sessions',
    passwords: 'authors/passwords',
    registrations: 'authors/registrations',
    confirmations: 'authors/confirmations',
    omniauth_callbacks: 'authors/omniauth_callbacks'
  }

  devise_scope :author_admin do
    resources :books
    resources :chapters
    resources :custom_styles
    resources :backgrounds
    resources :pages
    resources :comics
  end
  # resources :authors # this surely doesn't need to be here?

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :comics, only: %i[index show]
      resources :pages, only: %i[index show]
      resources :authors, only: %i[index show]
    end
  end

  root to: 'comics#browse'
end
