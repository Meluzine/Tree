Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # resources :trees

  resources :trees do
    resources :adoptions
  end

  resources :adoptions
  # resources :users do
  #   resources :trees, only: [:show, :index, :edit, :destroy, :create]
  # end
end
