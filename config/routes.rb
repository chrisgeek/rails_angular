Rails.application.routes.draw do
  resources :novels
  #devise_for :users
  #devise_for :users
  mount_devise_token_auth_for 'User', at: 'auth'

  #  namespace :api do
  #   scope :v1 do
  #     mount_devise_token_auth_for 'User', at: 'auth'
  #   end
  # end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
