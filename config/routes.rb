Rails.application.routes.draw do
  root 'static_pages#top'
  get '/signup', to: 'users#new'

  # ログイン機能
  get    '/login', to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users do
    get '/edit_basic_all', to: 'users#edit_basic_all'  
    post '/update_basic_all', to: 'users#update_basic_all'
    member do
      get 'edit_basic_info'
      patch 'update_basic_info'
    end
  end
end