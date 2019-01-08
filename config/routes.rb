Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/pages/entry" => "pages#entry", as: :entry
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :reports
    resources :rooms
    resources :room_items
    resources :room_item_comments
    resources :room_item_comment_photos
end
