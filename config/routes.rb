Rails.application.routes.draw do
  get 'doctor/show'
  get 'doctor/schedule'
  get 'patient/show', to: 'patient#show' #=> 'users/registrations#after_sign_up_path_for'
  get 'patient/schedule'
  post 'doctor/schedule'
  devise_for :users, controllers: { sessions: 'users/sessions',registrations: "users/registrations" }, path: '',path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  #devise_for :users
  resources :forums, except: :index
  root'forums#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
