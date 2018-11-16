class ApplicationController < ActionController::Base
  #ログイン後のリダイレクトを設定
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    mypage_index_path
  end

  def after_sign_out_path_for(resource)
    root_path
  end
  protect_from_forgery with: :exception
  ##deviseにusername追加
  before_action :configure_permitted_parameters, if: :devise_controller?
  def configure_permitted_parameters
    added_attrs = [ :username, :email, :password, :password_confirmation　]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
  end
end
