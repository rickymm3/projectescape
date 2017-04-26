class CountdownController < ApplicationController
  def index
    @heist = Timekeeper.where(room:"heist").first
    @wizard = Timekeeper.where(room:"wizard").first
  end

  def checkrunning
    if params[:room] == "heist"
      heisttk = Timekeeper.where(room:"heist").first
      @heist = check_running(heisttk)
    elsif params[:room] == "wizard"
      wizardtk = Timekeeper.where(room:"wizard").first
      @wizard = check_running(wizardtk)
    end
  end

  def starttimer
    tk = Timekeeper.where(room:params[:room]).first
    tk.start = Time.now
    tk.end = Time.now + 1.hour
    tk.end = tk.start if params[:stoptimer] == "stop"
    tk.save
    @room = check_running(tk)
    if tk.room == "wizard"
      redirect_to wizard_index_path
    else
      redirect_to heist_index_path
    end
  end

  def addtime
    tk = Timekeeper.where(id:params[:tk]).first
    time = params[:astime].to_i
    tk.end = tk.end + time.minute
    tk.save
    if tk.room == "wizard"
      redirect_to wizard_index_path
    else
      redirect_to heist_index_path
    end
  end

  def pause
    tk = Timekeeper.where(room:params[:room]).first
    tk.pause = !tk.pause
    tk.save
  end
end