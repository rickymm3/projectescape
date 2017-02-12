class WizardController < ApplicationController

  def playfile
    @message = params[:message] if params[:message]
    Hint2.first.update_attributes(message:@message)
  end

  def clear_hint
    Hint2.first.update_attributes(message:"")
  end

  def update_text
    @message = Hint2.first.message
  end

  def custom_message
    Hint2.first.update_attributes(message:params[:message])
    render :nothing => true
  end

  def index
    @texthints = Texthint.all
    render layout: "countdown"
  end
end
