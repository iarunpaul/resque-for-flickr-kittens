require 'resque/server'
Rails.application.routes.draw do
  resources :kittens
  root to: 'kittens#index'
  mount Resque::Server.new, :at => "/resque"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
