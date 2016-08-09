class CountdownController < ApplicationController
  def index
    @timer = params[:timer]
    render layout: "countdown"
    @message = ""
  end
end
