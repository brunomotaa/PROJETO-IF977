Rails.application.routes.draw do
  devise_for :users, :controllers => {registrations: 'user/registrations', omniauth_callbacks: 'callbacks'}
  devise_scope :user do
    root to: "devise/sessions#new"
    get '/login', to: 'devise/sessions#new', as: 'login'
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show]
  resources :pacientes, only: [:index, :show]
end
