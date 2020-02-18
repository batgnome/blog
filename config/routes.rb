Rails.application.routes.draw do
  get 'welcome/login/:id', to: 'welcome#login', as: :login

  resources :users, except: [:delete]
  resources :articles do
    member do
      post '/like', to: 'articles#like'
    end
    resources :comments
  end

  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
