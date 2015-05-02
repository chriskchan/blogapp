Rails.application.routes.draw do
devise_for :users

root 'welcome#index'
match '/newpage' => 'welcome#newpage', via: [:get]
resources :posts, only: [:index, :show, :new, :create]

end