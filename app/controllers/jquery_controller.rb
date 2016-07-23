class JqueryController < ApplicationController
  def playfile
    require 'json'
    @message = params[:message]
    Hint.first.update_attributes(message:@message)
    HTTParty.get("http://192.168.1.161:5000/play/98")
    response = HTTParty.get("http://192.168.1.161:5000/play/#{params[:id]}")
    parsed = JSON.parse(response)
    if parsed['success'] == true
      @success = "Success"
    else
      @success = "Failed"
    end
  end

  def clear_hint
    Hint.first.update_attributes(message:"")
  end

  def update_text
    Hint.first.update_attributes(params[:message])
  end

  def custom_message
    Hint.first.update_attributes(message:params[:message])
    render :nothing => true
  end

  def index
    render layout: "countdown"
  end
end
