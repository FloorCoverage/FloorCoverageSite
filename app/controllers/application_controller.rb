class ApplicationController < ActionController::Base
  include ApplicationHelper
  helper_method :current_user
  
  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    root_path
  end

end
