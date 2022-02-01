Rails.application.routes.draw do
  # namespace :c1 do
  root to: 'cruds#index'
  resources :cruds
  # end
end
