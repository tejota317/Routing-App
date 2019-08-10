Rails.application.routes.draw do

  namespace :admin do
    get 'dashboard/main'
    get 'dashboard/user'
    get 'dashboard/blog'
  end



  get 'about', to: 'pages#about'
  get 'leadgen/advertising/landingpage/lead', to: 'pages#contact', as: 'lead'
  resources :blogs

  resources :posts
  get 'posts/*missing', to: 'posts#missing'

  get 'query/:something', to: 'pages#anotherthing'

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
