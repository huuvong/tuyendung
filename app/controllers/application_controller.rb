class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_controller?(names)
    names.include?(current_controller)
  end
end
