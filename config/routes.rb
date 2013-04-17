Hostel::Application.routes.draw do

  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config

  mount Ckeditor::Engine => '/ckeditor'
  
  root to: "application#index"

  match "/rss", to: "news#feed"

  resources :pages, path: :page, only: [:show]
  resources :category_news, path: :category, only: [:index] do
    resources :news, path: :new, only: [:show, :index]
  end
  resources :category_galleries, path: :gallery, only: [:index, :show] do
    resources :galleries, path: :photo, only: [:show]
  end
  resources :testimonals, path: :testimonals, only: [:index, :create]
  resources :videos, path: :video, only: [:index]

end
