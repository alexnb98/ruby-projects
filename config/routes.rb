Rails.application.routes.draw do
  resources :comments
  root 'welcome#home'
  
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
end
