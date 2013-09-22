CapsuleShare::Application.routes.draw do
  root "home#index"

  devise_for :users, module: "users", format: false

  get "my" => "my#index"

  resources :upload_files

  namespace :api, defaults: { format: :json } do
    devise_scope :user do
      post "users/sign_in" => "users/sessions#create"
    end
    post "friends/create", to: "friends#create"
    post "users/search", to: "users#search"
    post "upload_files/create", to: "upload_files#create"
  end
end
