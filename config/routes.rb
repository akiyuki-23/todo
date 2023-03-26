Rails.application.routes.draw do
  resources :targets, only: [:index, :new, :create]
  root 'targets#index'
end
