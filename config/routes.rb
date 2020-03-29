Rails.application.routes.draw do
  resources :projects, only: [:show, :index]
  resources :posts, only: [:index]

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, :skip => [:registrations]

  get 'welcome/index'

  root 'welcome#index'
end
