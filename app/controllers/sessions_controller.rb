class SessionsController < ApplicationController
  layout 'login'
  include SessionsHelper
  # before_action :check, :only => [:destroy]
  # skip_before_action :authorize

    def new
        if logged_in?
            redirect_to admin_url
        end
    end
 
    def create
        if user = User.authenticate(params[:name], params[:password])
            session[:user_id] = user.id
            session[:user_name] = user.name
            redirect_to admin_url
        else
            redirect_to login_url, :alert => "Invalid username/password"
        end
    end
 
    def destroy
        session[:user_id] = nil
        redirect_to '/login', :notice => "Logged out"
    end

end