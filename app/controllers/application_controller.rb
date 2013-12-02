 class ApplicationController < ActionController::Base
   #include ActionController::Live  <--  active admin conflict.
   include Devise::Controllers::Helpers
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
 private
   #Definition to authenticate if user is logged in.
  def require_login
    unless user_signed_in?
      flash[:error] = "You must be logged in to access this section"
      redirect_to new_user_session_url
    end
  end
end
