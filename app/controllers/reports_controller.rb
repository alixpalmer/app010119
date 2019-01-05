class ReportsController < ApplicationController

  def index
    @report = Report.all
  end

  def new
    @report = Report.new
    @room = Room.new
  end

  def show
    @report = Report.find(params[:id])
    @rooms = @report.room.all

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
    @report = Report.find(params[:id])
    @rooms = @report.room
    @room_item_comment = Comment.new
    @room_item_comment.user_id = current_user.id
  end

  def update
    @report = Report.find(params[:id])
    @report.update(report_params)
    redirect_to report_path(@report)
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





















