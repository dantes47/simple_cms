# frozen_string_literal: true

Rails.application.routes.draw do
  resources :pages do
    member do
      get :delete
    end
  end

  # get 'pages/index'
  # get 'pages/show'
  # get 'pages/new'
  # get 'pages/edit'
  # get 'pages/delete'

  resources :subjects do
    member do
      get :delete
    end
  end

  # get 'subjects/index'
  # get 'subjects/show'
  # get 'subjects/new'
  # get 'subjects/edit'
  # get 'subjects/delete'

  # old example
  # match '/', :to => 'demo#index', :via => :get
  root 'demo#index'

  # resources :demo

  get 'demo/index'
  get 'demo/hello'

  get 'users/action'
  # get '/users', :to => 'users#action', :via => :get

  get 'demo/about'
  get 'demo/contact'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # default route
  # get ':controller(/:action(/:id))'
end
