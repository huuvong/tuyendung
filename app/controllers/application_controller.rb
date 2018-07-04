class ApplicationController < ActionController::Base
  # before_action :authorize
  protect_from_forgery with: :exception

  def current_controller?(names)
    names.include?(current_controller)
  end

  protected
  def authorize
    @user = User.find_by_id(session[:user_id])
    if @user == nil
      redirect_to '/login', :notice => 'You must login first'
    end
  end
end
