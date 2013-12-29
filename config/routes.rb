Wikiful::Application.routes.draw do
  get "welcome/index"
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  root 'welcome#index'
  resources :articles, :categories, :users, :sessions
  
end
