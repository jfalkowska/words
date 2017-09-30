Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # resources :search_histories
  resources :words, only: [] do
    collection do
      get 'search'
      post 'search'
    end
  end
  root to: 'words#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
