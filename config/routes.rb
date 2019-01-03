Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


resources :reports do
  resources :rooms
end

resources :rooms do
  resources :room_items
end

resources :room_items do
  resources :room_item_comments
end

resources :room_item_comments do
  resources :room_item_comment_photos
end

resources :room_item_comment_photos , only: [:show, :edit, :update, :destroy]

end
