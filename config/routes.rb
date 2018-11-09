Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }, path: '',path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  #devise_for :users 
  resources :forums, except: :index
  root'forums#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
