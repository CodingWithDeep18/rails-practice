Rails.application.routes.draw do
  root "dashboards#home"
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  # Add a route for sign-out
  devise_scope :user do
    get 'users/sign_out', to: 'users/sessions#destroy'
  end
  get 'products/index'
end
