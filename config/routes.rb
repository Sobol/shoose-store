ShooseStore::Application.routes.draw do
  resources :companies, only: [:index]

  match 'about' => 'static_pages#about', :as => :about_page
  match 'contact' => 'static_pages#contact', :as => :contact_page
  root :to => 'companies#index'
end
