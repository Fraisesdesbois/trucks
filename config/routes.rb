Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'pages/home'
  resources :machines
  # get "machines" => "restaurants#index"
  # get "machines/:id" => "restaurants#show"
  # get "machines/new" => "machines#new"
  # post "machines" => "machines#create"
  # get "machines/:id/edit" => "machines#edit"
  # patch "machines/:id" => "machines#update"
  # delete "machines/:id" => "machines#destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
