Rails.application.routes.draw do
  resources :pacientes
  root 'dashboard#index'
  devise_for :admins
end
