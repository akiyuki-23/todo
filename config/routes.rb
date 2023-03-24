Rails.application.routes.draw do
  resources :targets, only: :index
  root 'targets#index'
end
