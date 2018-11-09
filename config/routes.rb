Rails.application.routes.draw do
  get 'doctor/index'
  get 'patient/index', to: 'patient#index' #=> 'users/registrations#after_sign_up_path_for'
  devise_for :users, controllers: { sessions: 'users/sessions',registrations: "users/registrations" }, path: '',path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  #devise_for :users
  resources :forums, except: :index
  root'forums#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
