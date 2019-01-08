class RoomsController < ApplicationController

  def new
    @report = current_user.report.build
    @room = report.rooms.build
    @room_item = @room.room_items.build
  end

  def create
    if @room.save && room_item
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
    params.require(:room).permit(:name, :room_items_attributes => [:name])
  end


end
