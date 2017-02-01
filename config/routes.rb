Rails.application.routes.draw do
  
  mount Ckeditor::Engine => '/ckeditor'
  get 'movies/index'

  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'


 get "movies/topfav" => "movies#topfav"
  get "movies/details" => "movies#details"

   
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"

  resources :posts do
  	resources :comments
  end

end
