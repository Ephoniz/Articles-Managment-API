Rails.application.routes.draw do
  resources :comments
  post 'login', to:  'access_tokens#create'
  delete 'logout', to: 'access_tokens#destroy'
  
  resources :articles do
    resources :comments, only: [:index, :create]
  end
end
