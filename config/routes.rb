Rails.application.routes.draw do
  devise_for :users, :controllers=>{registrations: 'registrations'}

  resources :categories do
    resources :products do
      resources :reviews
    end
  end

  get '/profiles/:id', to: 'profiles#show', as: 'profile'

  root 'categories#index'
end
