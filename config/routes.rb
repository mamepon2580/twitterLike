Rails.application.routes.draw do
  #routesを変更
  #devise_for :users
 devise_for :users, controllers: {
   registrations: 'users/registrations',
   sessions: 'users/sessions'
 }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static_pages#index'  #追加
  get 'mypage/index'
  get 'infos/index'
end
