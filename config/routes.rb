Rails.application.routes.draw do
  root "qrcodes#index"

  resources :qrcodes
end
