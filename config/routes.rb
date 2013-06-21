ShooseStore::Application.routes.draw do
  resources :companies, only: [:index, :show]

  match 'about' => 'static_pages#about', :as => :about_page
  match 'contact' => 'static_pages#contact', :as => :contact_page

  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "users#new", :as => "signup"

  resources :password_resets
  resources :sessions
  resources :users, :only => [:new, :create] do
    member do
      get :activate
    end
  end

  namespace :admin do
    resources :companies
    resources :users, :only => [:index, :update, :show, :destroy]
  end

  root :to => 'companies#index'
end
