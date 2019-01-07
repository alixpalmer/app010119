class RoomsController < ApplicationControllers
  def new
  end

  def create
    @room = Room.new(room_params)
    @room.report_id = params[:report_id]
    @room.save
  end

  def show
  end

  def room_params
    params.require(:room).permit(:id, :report_id, :name)
  end
end
