class ApplicationController < ActionController::Base
  before_action :current_user

  def current_user
    nil
  end
end
