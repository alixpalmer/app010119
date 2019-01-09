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
    @report = Report.new(report_params)

    @room = Room.new(name: params['report']['name'], report_id: @report.id)
    @report.rooms << @room
    @room_item = RoomItem.new(name: params['report']['room_item'])
    @room.room_items << @room_item

    @comment = RoomItemComment.new(name: params['report']['comment'], room_item_id: @room_item.id)
    @room_item.room_item_comments << @comment

    # @report.rooms.build


      if @report.save! && @room.save! && @room_item.save! && @comment.save!
        flash[:success] = "New Report Created."
      else
        puts "DID NOT SAVE"
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

  private

  def report_params
    params.require(:report).permit(:address, :room_attributes => [:name])
  end
end
