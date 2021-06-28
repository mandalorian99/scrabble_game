Rails.application.routes.draw do
  root controller: 'session', action: 'new'
  resources :registration, only: [:new, :create]
  resources :session, only: %i[new create] do
    collection do
      get 'logout'
    end
  end

  resources :users, only: [:show]
  resources :leader_board, only: [:index]
end
