Rails.application.routes.draw do
  get 'doctor/show'
  get 'doctor/schedule'
  post 'doctor/schedule'
  get'doctor/index'
  get'doctor/patient_view/:id', to: 'doctor#patient_view', as:'doctor_patient_view'
  get 'patient/show', to: 'patient#show' #=> 'users/registrations#after_sign_up_path_for'
  get 'patient/schedule'
  get'patient/index'
  get'patient/doctor_view/:id', to: 'patient#doctor_view', as: 'patient_doctor_view'

  devise_for :users, controllers: { sessions: 'users/sessions',registrations: "users/registrations" }, path: '',path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  #devise_for :users
  resources :forums, except: :index
  root'forums#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
