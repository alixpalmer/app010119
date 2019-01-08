class ReportsController < ApplicationController

  def index
    @report = Report.all
  end

  def new
    @report = Report.new
    @report.rooms.build
  end

  def show
    @report = Report.find(params[:id])

    respond_to do |format|
      format.html
      format.pdf {
        render :pdf => "show", :layout => 'pdf.html'
      }
    end
  end

  def create
    @report = Report.new
    @report.rooms.build

    if @report.save
      flash[:success] = "New things created."
    else
      raise

    end
  end

  def edit
    @report = Report.find(params[:id])
  end

  def update
    @report = Report.find(params[:id])
    @report.update_attribute(report_params)
    redirect_to report_path(@report)
  end

  # private

  # def report_params
  #   params.require(:report).permit(:address, :room_attributes => [:name])
  # end

end
