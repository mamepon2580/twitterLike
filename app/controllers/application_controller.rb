class ApplicationController < ActionController::Base
  #ログイン後のリダイレクトを設定
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    notes_path
  end

  def after_sign_out_path_for(resource)
    root_path
  end
end
