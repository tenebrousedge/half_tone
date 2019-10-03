# frozen_string_literal: true

Rails.application.routes.draw do
  scope :author_admin do
    resources :books
    resources :chapters
    resources :custom_styles
    resources :backgrounds
    resources :pages
    resources :comics
  end
  resources :authors
end
