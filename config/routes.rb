Rails.application.routes.draw do
  devise_for :users

  root 'welcome#index'
  match '/whatever' => 'welcome#testing', via: [:get]
  
  resources :posts, only: [:index, :show]

end
