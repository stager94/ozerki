Hostel::Application.routes.draw do
  namespace :api do
    resources :news, only: [:index]
  end


  root to: "application#index"

  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config

  mount Ckeditor::Engine => '/ckeditor'

  resources :pages, path: :page, only: [:show]
  resources :category_news, path: :category, only: [:index] do
    resources :news, path: :new, only: [:show, :index]
  end
  resources :category_galleries, path: :gallery, only: [:index, :show] do
    resources :galleries, path: :photo, only: [:show]
  end
  resources :testimonals, path: :testimonals, only: [:index, :create]
  resources :videos, path: :video, only: [:index]
  resources :booking, only: [:index, :create], as: :bookings

  resource :cache do
    get :clear_fragment
  end
end
