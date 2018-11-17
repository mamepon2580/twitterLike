Rails.application.routes.draw do
  resources :tweets
  #routesを変更
  #devise_for :users
 devise_for :users, controllers: {
   registrations: 'users/registrations',
   sessions: 'users/sessions'
 }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static_pages#index'
  get 'mypage/index'
  get 'infos/index'
end
