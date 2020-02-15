Rails.application.routes.draw do
  resources :projects
  resources :posts
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, :skip => [:registrations], controllers: {
    sessions: 'users/sessions'
  }

  get 'welcome/index'

  root 'welcome#index'
end
