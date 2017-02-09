Rails.application.routes.draw do
  devise_for :accounts, :controllers => {registrations: 'registrations'}
  root :to => 'tales#index'

  resources :accounts do
    resources :contributions
  end
  resources :tales do
    get '/up_vote', :to => 'tales#up_vote'
    get '/down_vote', :to => 'tales#down_vote'

    resources :contributions
  end
end
