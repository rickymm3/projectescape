class ImpressionsController < ApplicationController

  def index

  end

  def show
    require 'gruff'
    g = Gruff::Line.new
    g.title = 'Impression chart'
    day = Time.now.beginning_of_day
    i8 = Impression.where(:created_at => Time.now..day).count
    i7 = Impression.where(:created_at => 1.day.ago.beginning_of_day..day).count
    i6 = Impression.where(:created_at => 2.day.ago.beginning_of_day..1.day.ago.beginning_of_day).count
    i5 = Impression.where(:created_at => 3.day.ago.beginning_of_day..2.day.ago.beginning_of_day).count
    i4 = Impression.where(:created_at => 4.day.ago.beginning_of_day..3.day.ago.beginning_of_day).count
    i3 = Impression.where(:created_at => 5.day.ago.beginning_of_day..4.day.ago.beginning_of_day).count
    i2 = Impression.where(:created_at => 6.day.ago.beginning_of_day..5.day.ago.beginning_of_day).count
    i1 = Impression.where(:created_at => 7.day.ago.beginning_of_day..6.day.ago.beginning_of_day).count

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