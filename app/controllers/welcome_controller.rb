class WelcomeController < ApplicationController
  impressionist :actions=>[:index],:unique => [:session_hash]
  def index

  end

  def assign_title
    @title = "Project Escape - The Conshohocken Escape Room!"
  end
end
