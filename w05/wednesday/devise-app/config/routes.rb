Rails.application.routes.draw do
  devise_for :user
  resources :penguins
  root 'penguins#index'
end
