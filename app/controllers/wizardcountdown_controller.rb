class WizardcountdownController < ApplicationController
  def index
    @timer = params[:timer]
    render layout: "countdown"
    @message = ""
  end
end