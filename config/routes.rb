Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  resources :pictures
  resources :conventions
  resources :reports
  resources :points
  resources :visitors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
