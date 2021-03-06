Rails.application.routes.draw do
  resources :messages
  resources :profiles
  resources :favos
  resources :relations
  resources :tweets
  #routesを変更
  #devise_for :users
 devise_for :users, controllers: {
   registrations: 'users/registrations',
   sessions: 'users/sessions',
   profiles: 'users/profiles'
 }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static_pages#index'
  get 'mypage/index'
  get 'infos/index'
  get 'timelines/index'
  get 'follows/index'
  get 'followers/index'
end
