# frozen_string_literal: true

Rails.application.routes.draw do
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

  scope :author_admin do
    resources :books
    resources :chapters
    resources :custom_styles
    resources :backgrounds
    resources :pages
    resources :comics
  end
    resources :authors

  root to: 'comics#browse'
end
