module UsersHelper

  def verify_user
    redirect_to '/' unless logged_in
  end

  def logged_in
    !!session[:user_id]
  end

  def current_user
    @user ||= User.find_by(id: session[:user_id])
  end

  def admin
    current_user.admin
  end

  def verify_admin

  end
end
