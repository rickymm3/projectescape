class CountdownController < ApplicationController
  def index
    render layout: "countdown"
    @message = ""
  end
end
