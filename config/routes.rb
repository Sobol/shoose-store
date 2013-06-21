ShooseStore::Application.routes.draw do
  resources :companies, only: [:index]

  match 'about' => 'static_pages#about', :as => :about_page
  match 'contact' => 'static_pages#contact', :as => :contact_page

  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "users#new", :as => "signup"

  resources :password_resets
  resources :sessions
  resources :users do
    member do
      get :activate
    end
  end
  root :to => 'companies#index'
end
