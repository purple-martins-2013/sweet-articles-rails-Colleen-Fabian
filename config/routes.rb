SweetArticlesRails::Application.routes.draw do
  root to: 'categories#index'

  resources :categories do
    resources :articles
  end

  resources :tags do 
    resources :articles
  end
end
