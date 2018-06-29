class ReportsController < ApplicationController
  def index
    @reports = Dir["public/reports/*"]
  end
  
  def create
    a = Date.parse("july 7 2019")
    # HardWorker.perform_in(a.to_s)
    # HardWorker.perform_async
    # ReportJob.perform_later
    # ReportJob.perform_now
    TestWorker.perform_async

    flash[:notice] = "Estamos processando seu relatório \\o/"
    redirect_to '/reports'
    end
  end
