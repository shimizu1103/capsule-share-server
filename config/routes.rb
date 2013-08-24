CapsuleShare::Application.routes.draw do
  root "home#index"

  # devise_for :users, only: [:sessions, :registrations], controllers: { sessions: "users/sessions", registrations: "users/registrations" }, format: false
  devise_for :users, module: "users", format: false

  # scope :api do
  #   devise_for :users, only: [:sessions, :registrations], controllers: {sessions: 'api/users/sessions', registrations: 'api/users/registrations'}, format: false
  # end
end
