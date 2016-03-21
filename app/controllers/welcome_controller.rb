class WelcomeController < ApplicationController
  before_filter :assign_title
  def index

  end

  def assign_title
    @title = "The Best Escape Room In Philadelphia Area!"
  end
end
