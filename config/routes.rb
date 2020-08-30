Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks'
  }
  devise_scope :user do
    get 'users/sign_in', to: 'users/sessions#new'
    get 'users/sign_out', to: 'users/sessions#destroy'
  end
  root 'homes#index'
end
