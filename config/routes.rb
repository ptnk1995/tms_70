Rails.application.routes.draw do
  devise_for :users
  root "static_pages#home"
  resources :user_courses
  namespace :admin do
    root "static_pages#index", as: "root"
    resources :subjects
  end
end
