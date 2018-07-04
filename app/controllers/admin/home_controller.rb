class Admin::HomeController < ApplicationController
  before_action :authorize
  layout "admin"
  def index

  end
end
