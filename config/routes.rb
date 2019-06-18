Rails.application.routes.draw do
  devise_for :accounts, :controllers => { :omniauth_callbacks => "accounts/omniauth_callbacks" }
  root 'static_pages#home'
  get 'static_pages/help'
  resources :users do
    collection { post :import }
  end
end
