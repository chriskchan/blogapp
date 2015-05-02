Rails.application.routes.draw do
  devise_for :users

  root 'welcome#testing'
  match '/whatever' => 'welcome#testing', via: [:get]
  
  resources :posts, only: [:index, :show, :new, :create]

end
