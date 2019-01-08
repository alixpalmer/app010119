class RoomsController < ApplicationControllers
  def new
    @report = current_user.report.build
    @room = report.rooms.build
  end

  def create
    if @room.save
      flash[:success] = "New room created."
    end
  end

  def show
  end

  def index
  end

  def update
  end

  def destroy
  end

  private

  def room_params
    params.require(:room).permit(:id, :report_id, :name)
  end
end
