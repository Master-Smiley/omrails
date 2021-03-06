Rails.application.routes.draw do
  devise_for :users
  as :user do
    get "signin" => 'devise/session#new'
    delete "singout" => 'devise/session#destroy'
    get 'signup' => 'devise/registration#new'
  end


  root 'pages#home'
  get 'about' => 'pages#about'
  get 'contactus' => 'pages#contactus'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
