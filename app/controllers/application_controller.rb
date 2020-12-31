class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :verify_user, :current_user, :logged_in, :admin 
  before_action :verify_user

  def home
  end

end
