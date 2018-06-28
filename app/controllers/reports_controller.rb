class ReportsController < ApplicationController
  def index
    @reports = Dir["public/reports/*"]
  end
  
  def create
    a = Date.parse("july 7 2019")
    HardWorker.perform_async(a.to_s)
    # ReportJob.perform_later
    # ReportJob.perform_now

    flash[:notice] = "Estamos processando seu relatório \\o/"
    redirect_to '/reports'
    end
  end
