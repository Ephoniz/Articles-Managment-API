Rails.application.routes.draw do
  resources :comments
  post 'login', to:  'access_tokens#create'
  delete 'logout', to: 'access_tokens#destroy'
  post 'sign_up', to: 'registrations#create'

  resources :articles do
    resources :comments, only: [:index, :create]
  end
end
