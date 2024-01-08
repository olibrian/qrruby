Rails.application.routes.draw do
  devise_for :users
  root "qrcodes#index"

  resources :qrcodes
end
