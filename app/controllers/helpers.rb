helpers do
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def authenticated?
    !!current_user
  end
end