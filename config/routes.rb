Wikiful::Application.routes.draw do
  get "welcome/index"
  
  root 'welcome#index'
  resources :articles, :categories, :users
  
end
