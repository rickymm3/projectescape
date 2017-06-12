class ImpressionsController < ApplicationController

  def index

  end

  def show
    require 'gruff'
    g = Gruff::Line.new
    g.title = 'Impression chart'
    today = 0.day.ago.beginning_of_day
    yesterday = 1.day.ago.beginning_of_day
    twodaysago = 2.day.ago.beginning_of_day
    threedaysago = 3.day.ago.beginning_of_day
    fourdaysago = 4.day.ago.beginning_of_day
    fivedaysago = 5.day.ago.beginning_of_day
    sixdaysago = 6.day.ago.beginning_of_day
    sevondaysago = 7.day.ago.beginning_of_day
    i8 = Impression.where(:created_at => today..Time.now).count
    i7 = Impression.where(:created_at => yesterday..today).count
    i6 = Impression.where(:created_at => twodaysago..yesterday).count
    i5 = Impression.where(:created_at => threedaysago..twodaysago).count
    i4 = Impression.where(:created_at => fourdaysago..threedaysago).count
    i3 = Impression.where(:created_at => fivedaysago..fourdaysago).count
    i2 = Impression.where(:created_at => sixdaysago..fivedaysago).count
    i1 = Impression.where(:created_at => 7.day.ago.beginning_of_day..sixdaysago).count

    g.labels = {
                 0 => 7.days.ago.strftime("%b %d"),
                 1 => 6.days.ago.strftime("%b %d"),
                 2 => 5.days.ago.strftime("%b %d"),
                 3 => 4.days.ago.strftime("%b %d"),
                 4 => 3.days.ago.strftime("%b %d"),
                 5 => 2.days.ago.strftime("%b %d"),
                 6 => 1.days.ago.strftime("%b %d"),
                 7 => "Today"
                }
    g.data :impressions, [i1, i2, i3, i4, i5, i6, i7, i8]

    send_data g.to_blob,
              :disposition => 'inline',
              :type => 'image/png',
              :filename => "chart.png"
  end

end