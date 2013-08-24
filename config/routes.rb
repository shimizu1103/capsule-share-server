CapsuleShare::Application.routes.draw do
  root "home#index"

  devise_for :users, module: "users", format: false

  # scope :api do
  #   devise_for :users, only: [:sessions, :registrations], controllers: {sessions: 'api/users/sessions', registrations: 'api/users/registrations'}, format: false
  # end

  # namespace :api, format: false do
  namespace :api, defaults: { format: :json } do
    devise_scope :user do
      post "users/sign_in" => "users/sessions#create"
    end
  end
end
