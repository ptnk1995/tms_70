Rails.application.routes.draw do
  devise_for :users
  root "static_pages#home"
  namespace :admin do
    root "static_pages#index", as: "root"
  end
end
