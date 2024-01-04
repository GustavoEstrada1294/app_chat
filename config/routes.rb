Rails.application.routes.draw do
  post 'add/user', to: 'rooms#add_user'
  
  resources :rooms do
    resources :messages
  end

  devise_for :users
  root 'rooms#index'

end
