class WelcomeController < ApplicationController
  before_filter :assign_title
  def index

  end

  def assign_title
    @title = "Home"
  end
end
