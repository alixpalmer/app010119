class ReportsController < ApplicationController

  def index
    @report = Report.all
  end

  def new
    @report = Report.new
    @room = Room.new
    @comment = Comment.new
  end

  def show
    @report = Report.find(params[:id])
    @rooms = @report.rooms

    respond_to do |format|
      format.html
      format.pdf {
        render :pdf => "show", :layout => 'pdf.html'
      }
    end
  end

  def create
    @report = Report.new(report_params)
    @report.user = current_user
    @report.save
    redirect_to report_path, notice: 'Your condition report has saved!'
  end

  def edit
    @comment = Comment.new
    @report = Report.find(params[:id])
    @comment.user_id = current_user.id
    @rooms = @report.rooms
  end

  def update
    @eport = ConditionReport.find(params[:id])
    @conditionreport.update(conditionreport_params)
    redirect_to condition_report_path(@conditionreport)
  end

  def confirmation
    @report = Report.find(params[:id])
    @rooms = @report.rooms
  end

  private

  def report_params
    params.require(:reports).permit( :id, :room_item_id)
  end


end





















