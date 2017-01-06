class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :default_title

  def default_title
    @title = "Project Escape, Conshohocken's Escape Room"
    @full_width_css = ""

  end

end
