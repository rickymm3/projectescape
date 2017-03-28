module ApplicationHelper
  def check_running(tk)
    tk if (tk.start..tk.end).cover? Time.now
  end
end
