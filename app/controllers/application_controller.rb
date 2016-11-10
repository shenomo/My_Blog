class ApplicationController < ActionController::Base
  include Authentication
  include Authorization

  protect_from_forgery with: :exception

  responders :flash
  respond_to :html

  def after_sign_in_path_for(resource_or_scope)
    posts_path
  end
end
