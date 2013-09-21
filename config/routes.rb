CapsuleShare::Application.routes.draw do
  root "home#index"

  devise_for :users, module: "users", format: false

  get "my" => "my#index"

  namespace :api, defaults: { format: :json } do
    devise_scope :user do
      post "users/sign_in" => "users/sessions#create"
    end
    post "friends/create", to: "friends#create"
    post "users/search", to: "users#search"
  end
    #post "users/search" => "api/users#search"
end
