Rails.application.routes.draw do

  devise_for :users
  get 'welcome/index'
  resources :articles do
    resources :comments
  end
  get 'sessions/new'

  root to: "welcome#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '*path' => redirect('/')
end
