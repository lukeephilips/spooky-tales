Rails.application.routes.draw do
  devise_for :accounts
  root :to => 'tales#index'

  resources :accounts do
    resources :contributions
  end
  resources :tales do
    resources :contributions
  end
end
