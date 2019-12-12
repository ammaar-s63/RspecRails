# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def ensure_user_login
    redirect_to new_session_path, flash: { error: 'You must login before access this page' } unless logged_in?
  end

  def logged_in?
    session[:user_id].present? ? true : false
  end
end
