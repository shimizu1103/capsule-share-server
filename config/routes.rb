CapsuleShare::Application.routes.draw do

  post "api/users/sign_in" => "users#sign_in"

  root "home#index"

  devise_for :users, module: "users", format: false

  get "my" => "my#index"

  namespace :api, defaults: { format: :json } do
    devise_scope :user do
      post "users/sign_in" => "users/sessions#create"
    end
  end
end
