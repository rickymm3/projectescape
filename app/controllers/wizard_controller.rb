class WizardController < ApplicationController

  def index
    @texthint2s = Texthint2.all
    @wizard = Timekeeper.where(room:"wizard").first
    render layout: "countdown"
    @nowrite = false
  end

  def playfile
    @message = params[:message] if params[:message]
    Hint.where(:room => "wizard").first.update_attributes(message:@message)
  end

  def clear_hint
    Hint.where(:room => "wizard").first.update_attributes(message:"")
  end

  def update_text
    @message = Hint.where(:room => "wizard").first.message
  end

  def custom_message
    Hint.where(:room => "wizard").first.update_attributes(message:params[:message])
    render :nothing => true
  end

  def checkrunning
    wizardtk = Timekeeper.where(room:"wizard").first
    @wizard = check_running(wizardtk)
  end

  def starttimer
    tk = Timekeeper.where(room:params[:room]).first
    tk.start = Time.now
    tk.pause = false
    tk.end = Time.now + 1.hour
    tk.end = tk.start if params[:startstop] == "stop"
    tk.save
    @room = check_running(tk)
  end

  def custom_file

  end

end
