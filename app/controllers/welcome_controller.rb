class WelcomeController < ApplicationController
  before_filter :assign_title
  def index

  end

  def assign_title
    @title = "Project Escape - The Conshohocken Escape Room!"
  end
end
