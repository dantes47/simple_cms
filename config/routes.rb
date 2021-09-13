# frozen_string_literal: true

Rails.application.routes.draw do
  # old example
  # match '/', :to => 'demo#index', :via => :get
  root 'demo#index'

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
